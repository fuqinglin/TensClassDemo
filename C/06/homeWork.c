#include <stdio.h>
int main(int argc, char const *argv[])
{
	
	int a[5] = { 5,6,7,8,9};
	int *p = (int *)(&a+1);     // &a的指针类型： int (*)[5]，指向包含五个整型数据的数组. &a + 1 偏移的字节数是20

	printf("%d\n", *(&a+1));  // 垃圾值
	printf("&a地址：%p\n", &a); // 0x7fff56792cb0
	printf("a地址：%p\n", a);  //  0x7fff56792cb0
	printf("&a + 1地址：%p\n",&a + 1);
	printf("a + 1地址：%p\n", a + 1); // a + 1 偏移的字节数是 4 

	printf("%d %d \n", *(a+1),*(p-1));
	return 0;
}