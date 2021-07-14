#include <stdio.h>
int arr[10] = {45,12,37,54,75,12,25,42,34,19};
int func(int *arr,int n);
int main()
{
    int n=10;
    /*scanf("%d",&n);
    for(int i=0;i<n;i++)
    {
        scanf("%d",&arr[i]);
    }*/
    int k=func(arr,n);
    printf("%d\n",k);
}






/*Compilation instructions:

I atached 2 other files , term2.s for first question and term1.s for second question.

I used Linux ubuntu terminal

To compile the code for first question , use the command :	arm-linux-gnueabi-gcc -static -g -O2 -o midterm mid.c term2.s
To execute it , :	./midterm


To compile the code for second question, use :	arm-linux-gnueabi-gcc -static -g -O2 -o midterm1 mid.c term1.s
To execute , use :	./midterm1

*/
