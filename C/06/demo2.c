#include <stdio.h>

void fun(int a[],int len);

int main(int argc, char const *argv[])
{
	//-------------------------指针和数组------------------------
	int a[5] = {3,4,6,7,6};
	printf("a = %p\n",a);
	printf("a[0]地址：%p\n",&a[0]);
	printf("a[1]地址：%p\n",&a[1]);
	printf("a[2]地址：%p\n",&a[2]);
	printf("a[3]地址：%p\n",&a[3]);
	printf("a[4]地址：%p\n",&a[4]);

	int *p = a; // 将数组的首地址赋值给指针变量p,此时p就指向了数组a
	// printf("a[1] = %d\n",*(++p));  // 根据指针变量获取数组的元素
	printf("a[4] = %d\n",p[4]);
	printf("a[4] = %d\n",*(p + 4) );

	// 使用指针遍历数组
	for (int i = 0; i < 5; ++i)
	{
		// printf("%d\n",a[i]);
		// printf("%d\n",p[i]);

		printf("%d\n",*p);
		p++; // 让指针指向数组的下一个元素
	}

	fun(a,5);

	return 0;
}


// 将数组的地址作为函数的参数传递，p就指向原来数组的首地址。
void fun(int *p,int len)
{
	for (int i = 0; i < len; ++i)
	{
		printf("%d ",p[i]);
	}
}

// 等价
void fun(int a[],int len)
{
	for (int i = 0; i < len; ++i)
	{
		printf("%d ",a[i]);
	}
}

