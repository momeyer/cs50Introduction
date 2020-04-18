#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <math.h>
#include <cs50.h>

struct Text
{
    char* text;
    double numberOfWords;
    double numberOfLetters;
    double numberOfSentences;
    int gradeLevel;
};

void getUserInput(struct Text* text)
{   
    text->text = get_string("Text: \n");
};

void countWords(struct Text* text)
{
    int count = 0;
    int i = 0;
    while(text->text[i] != '\0')
    {
        if (text->text[i] == ' ' && text->text[i+1] != ' ')
        {
            count++;
        }
        
        text->numberOfWords = count+1;

        ++i;
    };

}

void countLetters( struct Text* text)
{
    int count = 0;
    int i = 0;
    while(text->text[i] != '\0')
    {
        char c = tolower(text->text[i]);
       if (c >= 'a' && c <= 'z')
        {

            count++;
        }
        
        text->numberOfLetters = count;

        ++i;
    };
}

void countSentences( struct Text* text)
{
    int count = 0;
    int i = 0;
    while(text->text[i] != '\0')
    {
      if (text->text[i] == '.' || text->text[i] == '!' || text->text[i] == '?')
        {
            count++;
        }

        text->numberOfSentences = count;

        ++i;
    };
}

void computeGrade(struct Text* text)
{
    getUserInput(text);

    countWords(text);
    countLetters(text);
    countSentences(text);

    double averageLetters, averageSentences;

    averageLetters = text->numberOfLetters / text->numberOfWords * 100;
    averageSentences = text->numberOfSentences / text->numberOfWords * 100;

    text->gradeLevel = roundl(0.0588 * averageLetters - 0.296 * averageSentences - 15.8);
    
    if (text->gradeLevel <= 1)
    {
        printf("Before Grade 1\n");

    }
    else if (text->gradeLevel >= 16)
    {
        printf("Grade 16+\n");

    }
    else
    {
         printf("Grade %d\n", text->gradeLevel);
    };
}


int main()
{
    struct Text text;
    text.numberOfWords = 0;
    text.numberOfLetters = 0;
    text.numberOfSentences = 0;
    text.gradeLevel = 0;

    computeGrade(&text);
}

