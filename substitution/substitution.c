#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <cs50.h>
#include <stdlib.h>

struct Secret
{
    const char *plainText;
    const char *key;
};

int parse_input_arguments(int argc, char const *argv[], struct Secret *secret)
{
    if (argc != 2)
    {
        printf("Usage: ./substitution key\n");
        return 1;
    }

    secret->key = argv[1];

    if (strlen(secret->key) != 26)
    {
        printf("Key must contain 26 characters.\n");
        return 1;
    }

    for ( int i = 0; i < strlen(secret->key); i++)
    {
        if (!isalpha(secret->key[i]))
        {
            printf(" num ");
            return 1;
        }
        for (int j = i + 1; j < strlen(secret->key); j++)
        {
            if ( secret->key[i] == secret->key[j])
            {
                printf("repeated");
                return 1;
            }
        }
    }

    return 0;
}

void parse_user_input(struct Secret *secret)
{
    secret->plainText = get_string("plaintext: ");
}

void generate_secret(struct Secret *secret)
{
    char alp[27] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ\0";

    for (int i = 0; i < strlen(secret->plainText); i++)
    {
        const char s = toupper(secret->plainText[i]);
        int found = 0;
        for (int j = 0; j < strlen(alp); j++)
        {
            if (s == alp[j])
            {
                found = 1;
                if (islower(secret->plainText[i]))
                {
                    printf("%c", tolower(secret->key[j]));
                }
                else
                {
                    printf("%c", toupper(secret->key[j]));
                }
            }
        };
        if (!found)
        {
            printf("%c", secret->plainText[i]);
        }
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
    
    generate_secret(&secret);

    return 0;
}
