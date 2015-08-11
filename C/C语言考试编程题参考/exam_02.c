#include <stdio.h>

int max_Divisor(int, int);

int main(int argc, char const *argv[])
{
	//2.输入两个正整数m和 n，求其最大公约数和最小公倍数。
	printf("请输入两个整数,用逗号隔开:\n");
	int m,n;
	scanf("%d,%d",&m,&n);

	int max = max_Divisor(m,n);
	printf("这两个数的最大公约数是：%d\n",max);
	
	// 两个数的最小公倍数 ＝ 这两个数的乘积 / 他们的最大公约数；
	printf("这两个数的最小公倍数是：%d\n",m * n / max);

	return 0;
}

// 求最大公约数
int max_Divisor(int m, int n)
{
	int count = m < n ? m : n;
	int maxValue;
	for (int i = 1; i <= count; ++i)
	{
		if (m % i == 0 && n % i == 0)
		{
			maxValue = i;
		}
	}

	return maxValue;
}