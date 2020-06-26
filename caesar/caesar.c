#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <cs50.h>
#include <stdlib.h>

struct Secret
{
    const char *plainText;
    int key;
};

int parse_input_arguments(int argc, char const *argv[], struct Secret *secret)
{
    if (argc != 2)
    {
        printf("Usage: ./ceasar key\n");
        return 1;
    }

    for (int i =0; i < strlen(argv[1]); i++)
    {
        int x = atoi(&argv[1][i]);
        if (x == 0)
        {
            printf("must be a int\n");
            return 1;
        }
    }

    int x = atoi(argv[1]);
    if (x == 0)
    {
        printf("must be a int\n");
        return 1;
    }
    else if (x < 0)
    {
        printf("must be a positive int\n");
        return 1;
    }
    else
    {
        secret->key = x;
        return 0;
    }
}

void parse_user_input(struct Secret *secret)
{
    secret->plainText = get_string("plaintext: ");
}

void make_conversion(struct Secret *secret, int i)
{
    if (!isalpha(secret->plainText[i]))
    {
        printf("%c", secret->plainText[i]);
    }
    else
    {
        int transpose_value = 65;
        if (islower(secret->plainText[i]))
        {
            transpose_value = 97;
        }
        char c = (((secret->plainText[i] - transpose_value) + secret->key) % 26) + transpose_value;
        printf("%c", c);
    }
}

void generate_secret(struct Secret *secret)
{
    for (int i = 0; i < strlen(secret->plainText); i++)
    {
        make_conversion(secret, i);
    }
    printf("\n");
}

int main(int argc, char const *argv[])
{
    struct Secret secret;
    int hasError = parse_input_arguments(argc, argv, &secret);
    if (hasError)
    {
        return hasError;
    }

    parse_user_input(&secret);
    printf("ciphertext: ");
    generate_secret(&secret);

    return 0;
}
