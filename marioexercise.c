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

void generateLine(int numOfSpaces, int numOfSymbol)
{
    char line[18] = {};
    char hash[18] = {};

    for (int i = 0; i < numOfSpaces; i++)
    {
        strcat(line, " ");
    }

    for (int i = numOfSymbol; i > 0; i--)
    {
        strcat(hash, "#");
    }

    strcat(line, hash);
    strcat(line, "  ");

    strcat(line, hash);
    printf("%s\n", line);
}

void buildBlocks()
{
    int height = getUserInput();

    int i = height - 1;

    for (int j = 1; j <= height; j++)
    {
        generateLine(i--, j);
    }
}

int main()
{
    buildBlocks();

    return 0;
}
