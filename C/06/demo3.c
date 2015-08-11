#include <stdio.h>
int *fun(int n)
{
	int b = n + 100;
	int *p = &b;
	return p;
}

float *fun_f(float f)
{
	float *pf = &f;
	return pf;
}

char *fun_c()
{
	char *c = (char *)"oiuewio";
	// char cc[] = "uooieuoiup";
	return c;
}

void show();
int sum(float, int);
int sub(int, int);
int function(int (*p)(int,int),int, int);

int main(int argc, char const *argv[])
{
	//---------------------------指针函数-------------------------
	// 返回值是一个指针的函数。
	// int *p = fun(100);
	// printf("p = %p\n",p);

	//--------------------------函数指针---------------------------
	// 用于指向一个函数的指针。
	show();

	void (*fun)() = show;  // 定义一个函数指针，用于指向show函数。
	printf("show = %p\n",show);  // 函数名称是一个地址，是函数的首地址。
	printf("p = %p\n",fun);
	fun(); // 使用函数指针调用函数


	int (*SUM)(float,int) = sum;  // 这个SUM指针变量的类型：int (*)(float, int)
	// 函数指针要跟函数的类型对应，包括返回值类型、参数个数、参数的类型、参数的顺序都要一样,
	// printf("sum = %d\n",SUM(100,200));

	// SUM = sub; // 让函数指针指向另外一个函数
	// printf("sub = %d\n",SUM(200,400));


	// 把函数名称作为参数传递，就是把函数的地址传递。
	int result = function(sub,100,200);
	printf("result = %d\n",result);

	return 0;
}

void show()
{
	printf("函数指针！\n");
}

int sum(float a,int b)
{
	return a + b;
}

int sub(int a, int b)
{
	return a - b;
}

// 定义一个参数是函数指针的函数
int function(int (*p)(int,int),int a, int b)
{
	// p 是一个函数指针，可以动态接收不同的函数的地址，从而调用不同的函数。
	int result = p(a,b);
	return result;
}


// float sum_f(int a, int b)
// {
// 	return (float)a + b;
// }

