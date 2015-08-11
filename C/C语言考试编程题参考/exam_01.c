#include <stdio.h>

/* 1、-------求1！+2！+3！+……+20! （用2种不同的方法）----------*/

long function_1(int n);
long function_2(int v);

int main(int argc, char const *argv[])
{	
	long sum_1 = 0;
	// 方法一：计算阶乘的和
	for (int i = 1; i <= 20; ++i)
	{
		sum_1 += function_1(i);
	}
	printf("第一种方法的结果sum_1 = %ld\n",sum_1);


	// 方法二：
	long sum_2 = function_2(20);
	printf("第二种方法的结果sum_2 = %ld\n",sum_2);


	return 0;
}

//1、通过递归方法,先求n的阶乘
long function_1(int n)
{
	if(n == 1)
	{
		return 1;
	}else
	{
		return n*function_1(n-1);
	}
}

// 2、采用循环的方法
long function_2(int v)
{
	long sum;
	long result;
	for (int i = 1; i <= v; ++i)
	{
		result = 1;
		for (int j = i; j > 0; --j)
		{
			result *= j; // 计算阶乘
		}
		sum += result;  // 计算阶乘的和
	}
	return sum;
}



