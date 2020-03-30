#include <stdio.h>
#include <math.h>

struct Change
{
    int quarters;
    int dimes;
    int nickels;
    int pennies;
};


struct Change computeChange(float total)
{  
    struct Change change;
    
    change.quarters = 0;
    change.dimes = 0;
    change.nickels = 0;
    change.pennies = 0;

    int remainingChange = total * 100;
   
    if( remainingChange >= 25)
    {
        change.quarters = remainingChange/25;
        remainingChange -= (change.quarters * 25);
    }
    if( remainingChange >= 10);
    {
         change.dimes = remainingChange/10;
         remainingChange -= change.dimes * 10;
    
    }
    if( remainingChange >= 5)
    {
          change.nickels = remainingChange/5;
          remainingChange -= (change.nickels * 5);
    }
    if( remainingChange >= 0)
    {
        change.pennies = remainingChange/1;
        remainingChange -= (change.pennies * 1);
    }

    return change;
}


int main()
{
    float total;
       
    printf("\nPlease enter an amount of money: \n"); 
    scanf("%f", &total); 
    
    struct Change change = computeChange(total);

    printf("TOTAL VALUE ENTERED: %6.2f",total); 
    printf("\n%i quarters (0.25)\n",change.quarters); 
    printf("\n%i dimes (0.10)\n",change.dimes); 
    printf("\n%i nickles (0.05)\n",change.nickels);
    printf("\n%i pennies (0.01)\n",change.pennies);

   return 0;
}
