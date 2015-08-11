#include <stdio.h>
int main(int argc, char const *argv[])
{
	
	// 1、根据输入不同的运算符进行不同的运算

	char c;
	int a,b;
	printf("请输入两个整数和一运算符：\n");
	scanf("%d,%c,%d",&a,&c,&b);
	if (c == '+')
	{
		printf("%d + %d = %d\n",a,b,a + b);
	} 
	else if(c == '-')
	{
		printf("%d - %d = %d\n",a,b,a - b);
	} 
	else if(c == '*')
	{
		printf("%d * %d = %d\n",a,b,a * b);
	}
	else if(c == '/')
	{
		printf("%d / %d = %.2f\n",a,b,(float)a / b);
	} 
	else
	{
		printf("运算符输入不正确！\n");
	}

	return 0;
}