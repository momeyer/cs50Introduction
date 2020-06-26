#include <stdlib.h>
#include <stdio.h>

typedef struct mystruct
{
	int x;
} mystruct;

int main(int argc, char *argv[])
{
	int x = 99;
	int * p = &x;

	int* arr[2] = {};

	int* first = &arr[0];

	printf("addr[0] : %d\n", arr[0]);


	printf("addr of x: %x\n", &x);
	printf("ptr first : %p\n", first);
	printf("ptr p: %p\n", p);

	first = p;

	printf("ptr first : %p\n", first);
	printf("ptr p: %p\n", p);

	*first = 123;

	printf("x: %d\n", x);

	printf("addr[0] : %d\n", arr[0]);

}
