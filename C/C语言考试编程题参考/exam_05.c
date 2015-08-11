#include <stdio.h>

//5、求N个数中的最大值，最大值出现的次数，然后求出次大值（次大值一定存在）

void getMaxAndSecondNumber(int *, int);  

int main(int argc, char const *argv[])
{
	int a[] = {43,5,7,23,6,3,7,50};
	int count = sizeof(a) / sizeof(int);
	getMaxAndSecondNumber(a,count);
	return 0;
}

void getMaxAndSecondNumber(int *arr, int n)  
{  
    int i, max, second_max;  
    max = arr[0];  
    for(i = 1 ; i < n ; ++i)  
    {  
        if(arr[i] > max)  
        {  
            second_max = max;  
            max = arr[i];  
        }  
        else  
        {  
            if(arr[i] > second_max) {

            	second_max = arr[i];
            }       
        }  
    }  
    printf("最大值：%d，次大值：%d\n",max,second_max); 
}  


