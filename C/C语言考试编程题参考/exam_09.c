#include <stdio.h>

// 9、编写计算m的n次方使用递归函数

int mypow(int m,int n);
int main(int argc, char const *argv[])
{
	printf("输入两个数求次方：\n");
	int m,n;
	scanf("%d,%d",&m,&n);
	printf("%d的%d次方是：%d\n",m,n,mypow(m,n));
	return 0;
}

// 递归函数
int mypow(int m,int n)
{	
	if (n == 1)
	{
		return m;
	}

	return m * mypow(m,n-1); 
}