
#include <cs50.h>
#include <stdio.h>
#include <string.h>

int getUserInput()
{
    int height;
    do
    {
        height = get_int("Enter height: ");
    } while (height <= 0 || height > 8);

    return height;
}

void generateLine(int height)
{
    for (int i = 0; i < height; ++i)
    {
        printf("i = %d ", i);
        for (int j = 0; j < height; ++j)
        {
            if (i + j < height - 1)
            {
                printf(" ");
            }
            else
            {
                printf("#");
            }
        }
        printf("\n");
    }
}

void buildBlocks()
{
    int height = getUserInput();

    generateLine(height);
}

int main()
{
    buildBlocks();

    return 0;
}
