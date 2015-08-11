#include <stdio.h>

void function(int a[][5],int,int);
int main(int argc, char const *argv[])
{
	//4、有一个二维整型数组中  每一行都有一个最大值，编程求出这些最大值及他们的和。（二维数组自己定义）
	int a[4][5] = {{4,54,65,23,1},{32,45,689,21,98},{65,34,76,123,900},{100,488,677,1000,2010}};
	function(a,4,5);

	return 0;
}

void function(int p[][5],int m,int n)
{
	int max,sum = 0;
	for (int i = 0; i < m; ++i)
	{
		max = p[i][0];
		for (int j = 0; j < n; ++j)
		{
			if(p[i][j] > max){
				max = p[i][j];
			}
		}
		    sum += max;
		printf("第%d行最大值为%d\n",i,max);
	}
	printf("各行最大数的和为%d\n",sum);
}

