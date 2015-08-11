#include <stdio.h>

int var = 100;  // 全局变量
int fun();

int main(int argc, char const *argv[])
{
	//----------------------变量的类型-------------------

	// 1、变量的作用域：变量的有效范围，一般由｛｝划分。
	int a = 100;
	int b = 1;
	if (b != 0)
	{	
		int c = 200; 
		// int c = 100;  // 同一作用域内不能有同名的变量
		printf("a = %d\n",a);
	}
	if (b != 0)
	{
		int c = 330;   // 正确：不同作用域中可以定义同名的变量
		printf("c = %d\n",c);
	}


	for (int i = 0; i < 10; ++i)
	{
		printf("%d\n",i);
	}


	for (int i = 0; i < 20; ++i)
	{
		for (int i = 0; i < 10; ++i) // 错误：嵌套循环中不要使用相同的变量名定义
		{
			printf("i ＝ %d\n",i);
		}
		printf("%d\n",i);
	}

	// 2、局部变量和全局变量
	// 局部变量：在函数内部定义的变量叫做局部变量，这。种变量只能在函数内部起作用。
	// 全局变量：在函数外部定义的变量，整个文件都可以使用这个变量。作用域是整个文件。

	printf("var = %d\n",var);
	int v = fun();

	// 3、静态变量和动态变量
	for (int i = 0; i < 10; ++i)
	{
		static int value = 10; // 静态变量，使用static关键字修饰。只创建一次，下次运行不会再重新定义一个变量直接使用之前定义的。
		auto int value1 = 10;  // 动态变量，使用关键字auto修饰，auto一般省略。等价于 int value1 = 10;
		// printf("value = %d\n",value);
		printf("value1 = %d\n",value1);
		value++;
		value1++;
	}

	return 0;
}


int fun(int aa)
{
	int a = 200; 
	int b = 100;   // a 和 b 叫做局部变量
	int var = 900; // 这个局部变量虽然不会跟全局变量冲突，但是不建议这样定义跟全局变量同名的变量，容易混淆。
	printf("fun_var = %d\n",var);
	return a + b;
}



