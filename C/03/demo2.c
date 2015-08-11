#include <stdio.h>
int main(int argc, char const *argv[])
{
	
	//---------------------数组的操作---------------------

	int a[5] = {3,5,6,7,9};

	int v = a[4]; // 根据数组的下标取得对应位置的元素
	// int v1 = a[5];  错误：数组越界
	printf("v = %d\n",v);

	// 取值
	int index = 3;
	int v2 = a[index]; // 根据下标取值时，下标元素可以是变量
	printf("v2 =　%d\n",v2);

	// 赋值
	a[2] = 100; // 根据下标给数组指定的位置赋值,下标也可以是变量
	printf("a[2] = %d\n",a[2]);


	// 计算数组的字节大小和元素个数
	int aa[] = {3,4,5,8,123,557,87,44,99};
	long len =  sizeof(aa); // 计算数组的总字节大小
	int count = sizeof(aa) / sizeof(int); // 计算数组中元素的个数
	printf("len = %ld, count = %d\n",len,count);

	// 数组的遍历
	for (int i = 0; i < count; ++i)
	{
		printf("aa[%d] = %d\n",i,aa[i]); // 通过下标访问数组的每一个元素
	}
	
	return 0;
}