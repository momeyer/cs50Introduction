// Implements a dictionary's functionality

#include "dictionary.h"
#include <ctype.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char Word[LENGTH + 1];

// Represents a node in a hash table
typedef struct node
{
    Word word;
    struct node *next;
} node;

void deleteNodeList(node *element);

// Number of buckets in hash table
const unsigned int N = 200000;

// Hash table
node *table[N] = {};

unsigned int numElements = 0;

void strlwr(const Word from, Word to)
{
    const int size = strlen(from);
    for (int i = 0; i < size; ++i)
    {
        to[i] = tolower(from[i]);
    }

    to[size] = '\0';
}

// Returns true if word is in dictionary else false
bool check(const char *word)
{
    Word lowerCaseWord;
    strlwr(word, lowerCaseWord);

    unsigned int wordHash = hash(lowerCaseWord);

    // printf("Checking Hash value for %s with lower %s is %d\n", word, lowerCaseWord, wordHash);

    node *current = table[wordHash];

    if (current == NULL)
    {
        return false;
    }

    while (current != NULL)
    {
        if (strcmp(current->word, lowerCaseWord) == 0)
        {
            return true;
        }
        current = current->next;
    }

    return false;
}

// Hashes word to a number
unsigned int hash(const char *word)
{
    unsigned int hash_value = 0;
    for (int i = 0, n = strlen(word); i < n; i++)
    {
        hash_value = (hash_value << 2) ^ word[i];
    }

    // printf("Hash value for %s is %d and mod is %d\n", word, hash_value, hash_value % N);
    return hash_value % N;
}

void printTable()
{
    for (int i = 0; i < N; ++i)
    {
        node *cur = table[i];
        printf("Table[%d]: ", i);
        while (cur != NULL)
        {
            printf(" %s,", cur->word);
            cur = cur->next;
        }
        printf("\n");
    }
}

bool addWord(const char *word)
{
    Word lowerCaseWord;
    strlwr(word, lowerCaseWord);

    node *newNode = malloc(sizeof(node));

    if (newNode == NULL)
    {
        return false;
    }

    strcpy(newNode->word, lowerCaseWord);

    newNode->next = NULL;

    unsigned int wordHash = hash(lowerCaseWord);
    node *indexedNode = table[wordHash];

    if (indexedNode == NULL)
    {
        table[wordHash] = newNode;
    }
    else
    {
        newNode->next = indexedNode;
        table[wordHash] = newNode;
    }

    ++numElements;

    // printTable();

    return true;
}

// Loads dictionary into memory, returning true if successful else false
bool load(const char *dictionary)
{
    FILE *dictPointer = fopen(dictionary, "r");

    if (dictPointer == NULL)
    {
        return false;
    }

    Word word;

    while (fscanf(dictPointer, "%s", word) != EOF)
    {
        addWord(word);
    }
    fclose(dictPointer);

    return true;
}

// Returns number of words in dictionary if loaded else 0 if not yet loaded
unsigned int size(void)
{
    return numElements;
}

void deleteNodeList(node *element)
{
    if (element->next != NULL)
    {
        deleteNodeList(element->next);
    }
    free(element);
}

// Unloads dictionary from memory, returning true if successful else false
bool unload(void)
{
    for (int i = 0; i < N; ++i)
    {
        node *element = table[i];
        if (element != NULL)
        {
            deleteNodeList(element);
        }
    }
    return true;
}
