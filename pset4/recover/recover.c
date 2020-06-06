#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef uint8_t BYTE;
typedef int bool;

bool isJPGHeader(BYTE *buffer)
{
    return (buffer[0] == 0xff) && (buffer[1] == 0xd8) && (buffer[2] == 0xff) &&
           ((buffer[3] & 0xf0) == 0xe0);
}

FILE *createJPGFile()
{
    static int recoverCounter = 0;
    char filename[8] = {};

    sprintf(filename, "%03i.jpg", recoverCounter++);

    return fopen(filename, "w");
}

FILE *openJPGFile(FILE *outputFile)
{
    if (outputFile == NULL)
    {
        return createJPGFile();
    }
    else
    {
        fclose(outputFile);
        return createJPGFile();
    }
}

bool recoverRawFile(FILE *inputFile)
{
    const int numBytes = 512;
    BYTE *buffer = (BYTE *)malloc(sizeof(BYTE) * numBytes);
    FILE *outputFile = NULL;

    while (fread(buffer, 1, numBytes, inputFile) == numBytes)
    {
        if (isJPGHeader(buffer))
        {
            outputFile = openJPGFile(outputFile);

            if (fwrite(buffer, 1, numBytes, outputFile) != numBytes)
            {
                return 0;
            }
        }
        else if (outputFile != NULL)
        {
            if (fwrite(buffer, 1, numBytes, outputFile) != numBytes)
            {
                return 0;
            }
        }
    }

    free(buffer);

    return 1;
};

FILE *parseArguments(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: ./recover image\n");
        return NULL;
    }

    FILE *inputFile = fopen(argv[1], "r");

    if (inputFile == NULL)
    {
        printf("input file not found\n");
        return NULL;
    }

    return inputFile;
}

int main(int argc, char *argv[])
{
    FILE *inputFile = parseArguments(argc, argv);
    if (inputFile == NULL)
    {
        return 1;
    }

    if (!recoverRawFile(inputFile))
    {
        printf("error while recovering file\n");
        fclose(inputFile);
        return 1;
    };

    fclose(inputFile);

    return 0;
}
