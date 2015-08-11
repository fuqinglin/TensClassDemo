#include <stdio.h>
int main(int argc, char const *argv[])
{
	//-------------------------循环语句-------------------------
	// 1、while循环

	// 输出 0 ~100 的所有整数
	int n = 0;
	while(n<=100) // （）里面的条件成立就执行循环语句，直到条件不成立
	{	
		printf(" %d",n);
		n++; // 自增的变量
	}	


	// 输出100以内的所有偶数,每10个为一行
	int value = 0;
	int count = 0; // 统计偶数的个数
	printf("\n100内的所有偶数：\n");
	while(value <= 100)
	{
		if (value % 2 == 0)
		{
			printf(" %d",value);
			count++;
		}
		value++;
		if (count % 10 == 0) // 每10个数换行
		{
			printf("\n");
		}
	}


	//2、do-while循环
	// 输出 0 ~100 的所有整数
	printf("\n");
	int m = 90;
	do { 
		// do-while中的循环语句不管条件是否成立都会先执行一次，再进行条件的判断
		printf("%d ",m);
		m++;
	}while(m <= 100);

	return 0;
}

