#include <stdio.h>
int main(int argc, char const *argv[])
{
	//-----------------------for循环------------------------

	// 输出100内的所有整数

	for(int i=0;i <= 100;i++) // i是初始值，i <= 100是循环条件，i++值的改变
	{
		printf(" %d",i);
	}


	// 输出100内的所有奇数并且求和
	printf("100内的所有奇数:\n");
	int sum = 0;
	for (int i = 0; i <= 100; ++i)
	{
		if (i % 2 != 0)
		{
			printf(" %d",i);
			sum += i;
		}
	}
	printf("\nsum = %d\n",sum);


	//-----------------------------多重循环---------------------
	/*
		* * * * * * * * * *
		* * * * * * * * * *
		* * * * * * * * * *
		* * * * * * * * * *
		* * * * * * * * * *
	*/

	for (int i = 0; i < 5; ++i)
	{
		for (int j = 0; j < 10; ++j)
		{
			printf(" *");
		}

		printf("\n");
	}

	/* 输出如下图形：
		1
		2  3
		4  5  6
		7  8  9  10
		11 12 13 14 15
	*/

	int value = 1;
	for (int i = 0; i < 5; i++)
	{
		for (int j = 0; j <= i ; ++j)
		{
			printf("%d\t",value++); // \t 转义字符：横向制表符
		}

		printf("\n");
	}

	//---------------------break和continue关键字----------------------
	for (int i = 0; i < 10; ++i)
	{
		if (i == 5)
		{
			break; // 用于结束整个循环
		}
		printf("%d ",i);
	}

	printf("\n");
	for (int i = 0; i < 10; ++i)
	{
		if (i == 5)
		{
			continue; // 用于跳出某次循环
		}
		printf("%d ",i);
	}


	return 0;
}