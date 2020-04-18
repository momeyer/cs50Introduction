#include <stdio.h>
#include <cs50.h>
#include <string.h>

struct CreditValidator
{
    long creditCardNumber;
    int arrayNumber[16];
    int sumOdds;
    int sumEven;
    int numOfDigits;
};

void initializeValidator(struct CreditValidator *validator, long cardNumber)
{
    // initialize struct values to be used in the other funcitons
    validator->creditCardNumber = cardNumber;
    validator->sumOdds = 0;
    validator->sumEven = 0;
    
    for (int i = 0; i < 16; ++i)
    {
        validator->arrayNumber[i] = 0;
    }

    int index = 0;
    do
    {
        validator->arrayNumber[index++] = cardNumber % 10;
        cardNumber /= 10;    
    }
    while (cardNumber > 0);

    validator->numOfDigits = index;
}



void calculatingOddNumbers(struct CreditValidator *validator)
{
    for (int i = 1; i < validator->numOfDigits; i += 2)
    {   
        // get every other number starting from second last digit
        int num;
        num = validator->arrayNumber[i] * 2;
        // multiplay by two, if the result is a two digit number, split them an sum all of the digits together

        if (num >= 10)
        {
            int splitNumber;
            splitNumber = 1 + (num - 10);

            validator->sumOdds += splitNumber;
        }
        else
        {
            validator->sumOdds += num;
        }
    }
}

void calculatingEvenNumbers(struct CreditValidator *validator)
{
    for (int k = 0; k < validator->numOfDigits; k += 2)
    {
        int num;
        num = validator->arrayNumber[k];
        validator->sumEven += num;
    }
}

void checkFlag(struct CreditValidator *validator)
{
    int firstDigit = validator->arrayNumber[validator->numOfDigits - 1];
    int firstDigits = firstDigit * 10 + validator->arrayNumber[validator->numOfDigits - 2];
    
    if (firstDigits == 34 || firstDigits == 37)
    {  
        // American Express numbers start with 34 or 37
        printf("%li", validator->creditCardNumber);
        printf(" AMEX\n");
    }
    else if (firstDigits == 51 || firstDigits == 52 || firstDigits == 53 || firstDigits == 54 || firstDigits == 55)
    {   
        // most MasterCard numbers start with 51, 52, 53, 54, or 55
        printf("%li", validator->creditCardNumber);
        printf(" MASTERCARD\n");
    }
    else if (firstDigit == 4)
    {   
        // Visa numbers start with 4
        printf("%li", validator->creditCardNumber);
        printf(" VISA\n");
    }
    else
    {
        printf("INVALID\n");
    }
    
}

void checkIfValid(long cardNumber)
{

    struct CreditValidator validator;
    initializeValidator(&validator, cardNumber);
    
    switch (validator.numOfDigits)
    {
    case 13:
    case 15:
    case 16:
        
        calculatingOddNumbers(&validator);
        calculatingEvenNumbers(&validator);

        int sum = validator.sumEven + validator.sumOdds;

        if (sum % 10 == 0)
        {   
            //if valid, prints the card number and the flag of the card
            checkFlag(&validator);
        }
        else
        {
            printf("INVALID\n");
        }

        break;
    
    default:
        printf("INVALID\n");
        break;
    }
}

int main(void)
{   
    long cardNumber = get_long("Number: ");

    checkIfValid(cardNumber);
}

