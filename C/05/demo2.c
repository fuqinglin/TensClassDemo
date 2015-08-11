#include <stdio.h>

// extern int value; // extern 声明一个全局变量
int sum(int,int);
int sub(int,int);
int main(int argc, char const *argv[])
{
	//1、内部变量和外部变量
	// printf("value = %d\n",value);

	//2、内部函数和外部函数
	printf("sum = %d\n",sum(100,200));

	// printf("sub = %d\n",sub(200,100)); 不能使用内部函数

	return 0;
}