#include <stdio.h>

// 1、函数声明
// int sumFun(int a, int b); // 函数的声明，当函数的实现在调用函数后面时，需要提前告诉有这样一个函数
int sumFun(int, int); // 声明函数时，参数的名称可以省略。声明的函数必须要实现，否则编译出错。
void fun(int a[], int);

int main(int argc, char const *argv[])
{
	printf("sum = %d\n",sumFun(10,200));

	int ary[5] = {1,2,3,4,5};
	// 数组名称就是一个地址，是数组的首地址代表整个数组的存储地址
	printf("%p\n",ary); // %p打印地址，16进制编码:0x7fff579a7c70

	int len = sizeof(ary) / sizeof(int);
	fun(ary,len); // 数组作为参数传递不是值的传递，而是首地址的传递

	return 0;
}


void fun(int a[],int len)
{
	// int len = sizeof(ary) / sizeof(int); 错误：不能用传递的数字直接求数组的大小
	printf("%p\n",a);
	for (int i = 0; i < len ; ++i)
	{
		printf("a[%d] = %d\n",i,a[i]);
	}
}

int sumFun(int a,int b)
{
	return a + b;
}