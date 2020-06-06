#include "helpers.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

// Convert image to grayscale
void grayscale(int height, int width, RGBTRIPLE image[height][width])
{
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            RGBTRIPLE curPixel = image[i][j];

            BYTE avg = round((image[i][j].rgbtRed + image[i][j].rgbtGreen + image[i][j].rgbtBlue) / 3.0);

            image[i][j].rgbtRed = avg;
            image[i][j].rgbtGreen = avg;
            image[i][j].rgbtBlue = avg;
        }
    }

    return;
}

// Convert image to sepia
void sepia(int height, int width, RGBTRIPLE image[height][width])
{
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            RGBTRIPLE curPixel = image[i][j];
            image[i][j].rgbtRed = round(fmin(0.393 * curPixel.rgbtRed + 0.769 * curPixel.rgbtGreen + 0.189 * curPixel.rgbtBlue, 255.0));
            image[i][j].rgbtGreen = round(fmin(0.349 * curPixel.rgbtRed + 0.686 * curPixel.rgbtGreen + 0.168 * curPixel.rgbtBlue, 255.0));
            image[i][j].rgbtBlue = round(fmin(0.272 * curPixel.rgbtRed + 0.534 * curPixel.rgbtGreen + 0.131 * curPixel.rgbtBlue, 255.0));
        }
    }

    return;
}

// Reflect image horizontally
void reflect(int height, int width, RGBTRIPLE image[height][width])
{
    for (int i = 0; i < height; i++)
    {
        int k = width - 1;
        int j = 0;
        for (; j < k; j++, k--)
        {
            RGBTRIPLE temp = image[i][j];
            image[i][j] = image[i][k];
            image[i][k] = temp;
        }
    }

    return;
}

void blurPixel(int height, int width, RGBTRIPLE image[height][width], RGBTRIPLE copiedImage[height][width], int row, int col)
{
    int rgbtRed = 0;
    int rgbtGreen = 0;
    int rgbtBlue = 0;

    int numVisited = 0;

    for (int i = row - 1; i <= row + 1; i++)
    {
        if (i < 0 || i >= height)
        {
            continue;
        }

        for (int j = col - 1; j <= col + 1; j++)
        {
            if (j < 0 || j >= width)
            {
                continue;
            }
            rgbtRed += copiedImage[i][j].rgbtRed;
            rgbtGreen += copiedImage[i][j].rgbtGreen;
            rgbtBlue += copiedImage[i][j].rgbtBlue;

            numVisited++;
        }
    }

    image[row][col].rgbtRed = round(rgbtRed / (float)numVisited);
    image[row][col].rgbtGreen = round(rgbtGreen / (float)numVisited);
    image[row][col].rgbtBlue = round(rgbtBlue / (float)numVisited);
}

void copyImage(int height, int width, RGBTRIPLE originalImage[height][width], RGBTRIPLE newImage[height][width])
{
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            newImage[i][j] = originalImage[i][j];
        }
    }
}

// Blur image
void blur(int height, int width, RGBTRIPLE image[height][width])
{
    RGBTRIPLE(*copiedImage)
    [width] = calloc(height, width * sizeof(RGBTRIPLE));

    copyImage(height, width, image, copiedImage);

    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            blurPixel(height, width, image, copiedImage, i, j);
        }
    }
    return;
}

int computeResultPixel(float x, float y)
{
    return fmin(round(sqrt((x * x) + (y * y))), 255.0);
}

void findEdgePixel(int height, int width, RGBTRIPLE image[height][width], RGBTRIPLE copiedImage[height][width], int row, int col)
{
    const int arrayGX[9] = {-1, 0, 1, -2, 0, 2, -1, 0, 1};
    const int arrayGY[9] = {-1, -2, -1, 0, 0, 0, 1, 2, 1};

    float rgbtRed[2] = {0, 0};
    float rgbtGreen[2] = {0, 0};
    float rgbtBlue[2] = {0, 0};

    int kernelIndex = 0;
    RGBTRIPLE curPixel;

    const RGBTRIPLE blackPixel = {0, 0, 0};

    for (int i = row - 1; i <= row + 1; i++)
    {
        for (int j = col - 1; j <= col + 1; j++, kernelIndex++)
        {
            if (i < 0 || i >= height || j < 0 || j >= width)
            {
                curPixel = blackPixel;
            }
            else
            {
                curPixel = copiedImage[i][j];
            }
            
            // apply formula GX to curPixel
            rgbtRed[0] += curPixel.rgbtRed * arrayGX[kernelIndex];
            rgbtGreen[0] += curPixel.rgbtGreen * arrayGX[kernelIndex];
            rgbtBlue[0] += curPixel.rgbtBlue * arrayGX[kernelIndex];

            // apply formula GY to curPixel
            rgbtRed[1] += curPixel.rgbtRed * arrayGY[kernelIndex];
            rgbtGreen[1] += curPixel.rgbtGreen * arrayGY[kernelIndex];
            rgbtBlue[1] += curPixel.rgbtBlue * arrayGY[kernelIndex];
        }
    }

    // sqrt(Gx^2 + Gy^2)
    image[row][col].rgbtRed = computeResultPixel(rgbtRed[0], rgbtRed[1]);
    image[row][col].rgbtGreen = computeResultPixel(rgbtGreen[0], rgbtGreen[1]);
    image[row][col].rgbtBlue = computeResultPixel(rgbtBlue[0], rgbtBlue[1]);
}



void edges(int height, int width, RGBTRIPLE image[height][width])
{
    RGBTRIPLE(*copiedImage)
    [width] = calloc(height, width * sizeof(RGBTRIPLE));

    copyImage(height, width, image, copiedImage);

    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            findEdgePixel(height, width, image, copiedImage, i, j);
        }
    }
    return;
}
