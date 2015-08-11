#include <stdio.h>
int main(int argc, char const *argv[])
{
	//1、定义一个数组，求数组中的最大值
	int arry[] = {89,54,-887,3434,654};
	int count = sizeof(arry) / sizeof(int);
	int maxValue = arry[0];
	for (int i = 0; i < count; ++i)
	{
		if (maxValue < arry[i])
		{
			maxValue = arry[i];
		}
	}
	printf("maxValue = %d\n",maxValue);
	

	//2、定义一个数组，排序数组中的元素
	int a[] = {3,47,8,4,0,13,656,52,876,100};
	int len = sizeof(a) / sizeof(int);
	// 冒泡排序
	for (int i = 0; i < len; ++i)
	{
		for (int j = len - 1; j >= i; --j)
		{
			if (a[j] < a[j-1]) 
			{
				int temp = a[j];
				a[j] = a[j-1];
				a[j-1] = temp;
			}
		}
	}

	// 输出排序后的数组
	for (int i = 0; i < len; ++i)
	{
		printf(" %d",a[i]);
	}


	return 0;
}