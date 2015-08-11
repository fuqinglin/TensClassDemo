#include <stdio.h>

int getSum(int a, int b)     // a,b 是函数的参数，用于接收外部传递的值。这个函数中的参数叫形参
{	
	int c = a + b;          // 函数体，实现函数功能的代码
	return c;              // return 函数的返回，表示函数的结束标志

	printf("jlkfl;ka\n"); // retrun 后面的代码不会再执行
}


int fun(int f,int b, int c)
{	
	int ff = f + b + c;
	return ff;
}

// float fun() // C语言中不能有相同名称的函数，不管是返回值类型、参数个数是否一样都不允许
// {
// 	printf("hhhhh\n");
// 	return 0;
// }

void fun_1() // 没有参数的函数
{
	printf("经费拉拉姐夫\n");
}


void fun_(int b) // void 空类型，也就是不能保持任何的数据
{
	printf("b = %d\n",b);

	fun_1(); // 在函数内调用其他函数
	return; // 这个return仅仅作为函数的结束标志，不会返回任何的数值
}


int main(int argc, char const *argv[])
{
	int v1 = 100,v2 = 200;
	int value = getSum(v1,v2); // 函数调用，value用于接收函数的返回值，v1,v2叫实参
	printf("sum = %d\n", value);

	fun_(100); // 没有返回值类型的函数直接调用，不需要变量的接收
	// fun_1();

	float f = fun();

	// float ff = fun(10,3,45);
	
	// printf("ff = %f\n",ff);	

	// int f(int a, int b) // 函数内部不能定义函数，只能调用函数
	// {
	// 	printf("%d\n",a + b);
	// }

	return 0;
}




