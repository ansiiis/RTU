#include <stdio.h>

int main()
{
	pirmais();
	otrais();
	tresais();
	ceturtais();
	piektais();
	sestais();
}

int pirmais()
{
    int integerType;
    float floatType;
    double doubleType;
    char charType;

    // Sizeof operator is used to evaluate the size of a variable
    printf("Size of int: %ld bytes\n",sizeof(integerType));
    printf("Size of float: %ld bytes\n",sizeof(floatType));
    printf("Size of double: %ld bytes\n",sizeof(doubleType));
    printf("Size of char: %ld byte\n",sizeof(charType));

    return 0;
}


int otrais() 
{
	short int a=10E6;
	long int A=10E6;

	printf("Isaais: %d\n",a);
	printf("Garais: %d\n",A);
	return 0;
}

int tresais()
{
	int a=2;
	int b=3;
	int c;
	
	c=a+b;

	printf("saskaitam %d plus %d vienads ar %d\n",a,b,c);
}

int ceturtais()
{
	int a=1,b=2;
	int c;
	c=a*b;
	printf("reizinam %d ar %d viendads ar %d\n",a,b,c);
}

int piektais()
{
	int a=1,b=5,c,d;
	c=a%b;
	d=1/5;
	printf("modulis no %d un %d ir %d, dalijums ir %d\n",a,b,c,d);
}

int sestais()
{
	char a;
	printf("ievadi vienu simbolu\n");
	scanf("%c",&a);
	printf("tu ievadīji simbolu ar ASCII vertību %d\n",a);
}


