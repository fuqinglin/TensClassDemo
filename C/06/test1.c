#include <stdio.h>

void exchangFun(int *, int *);
int main(int argc, char const *argv[])
{
	//1、使用指针的方式交换两个变量的值
	int m = 200,n = 100;
	exchangFun(&m,&n);
	printf("交换后：m = %d,n = %d\n",m,n);


	//2、键盘任意输入三个数，让它们从小到大输出
	printf("请输入三个数：\n");
	int a,b,c;
	scanf("%d,%d,%d",&a,&b,&c);
	if (a > b)
	{
		exchangFun(&a,&b);
	}
	if(a > c)
	{
		exchangFun(&a,&c);
	}
	if (b > c)
	{
		exchangFun(&b,&c);
	}
	printf("%d %d %d\n",a,b,c);

	return 0;
}

// 使用指针方式进行变量值的交换
void exchangFun(int *x, int *y)
{
	int temp;
	temp = *x;
	*x = *y;
	*y = temp;
}

