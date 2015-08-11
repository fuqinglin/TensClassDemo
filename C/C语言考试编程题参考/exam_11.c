#include <stdio.h>

// 11、用代码实现一个整数数组  int n[10]={0,1,2,3,4，8，34，21，6，10} 从大到小数值的排列
void sortArray(int [],int len);
void putArray(int [],int len);

int main(int argc, char const *argv[])
{
	int n[10]={0,1,2,3,4,8,34,21,6,10};

	sortArray(n,10);
	putArray(n,10);

	return 0;
}

// 冒泡排序
void sortArray(int a[],int len)
{
	for (int i = 0; i < len; ++i)
	{
		for (int j = len - 1; j > i ; --j)
		{
			if (a[j] > a[j - 1])
			{
				int temp = a[j];
				a[j] = a[j - 1];
				a[j - 1] = temp;
			}
		}
	}
}

// 输出数组元素
void putArray(int a[],int len)
{
	for (int i = 0; i < len; ++i)
	{
		printf("%d ",a[i]);
	}
}

