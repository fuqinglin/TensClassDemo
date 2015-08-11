#include <stdio.h>

//6、编写一个函数，求3个整数的最大值

int maxValue(int a,int b, int c);
int main(int argc, char const *argv[])
{	
	printf("请输入三个数，求最大值：\n");
	int a,b,c;
	scanf("%d,%d,%d",&a,&b,&c);

	printf("最大值：%d\n",maxValue(a,b,c));
	return 0;
}

int maxValue(int a,int b, int c)
{
	if (a > b)
	{
		return a > c ? a : c;
	}

	return b > c ? b : c;
}