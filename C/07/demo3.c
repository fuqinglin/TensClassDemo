#include <stdio.h>
#include <stdlib.h>
void fun(int n);
int main(int argc, char const *argv[])
{
	//-----------------------动态内存分配malloc函数-----------------------

	  char *str = (char *)malloc(20); // 开辟一个20字节的内存空间，返回这内存的首地址。
	  // ()里是内存空间的字节数，(char *)返回的指针类型。这个指针类型取决保存数据类型

	  if (str != NULL) // 先判断内存是否开辟成功：stu != NULL，NULL表示空什么都没有
	  {
	  	 scanf("%s",str);
	  	 printf("%s\n",str);
	  }

	  free(str); // 释放开辟的内存空间，使用了malloc函数必须在这个内存使用完后对应的使用free()释放内存。
	  int *p = (int *)malloc(sizeof(int) * 20);
	  for (int i = 0; i < 20; ++i)
	  {
	  	p[i] = i;
	  }
	  printf("p[3] = %d\n",p[3]);

	  free(p);


	  int a = 20;
	  fun(a);

	  // int n = 5;
	  int aa[10];
	  // int aa_[n];
	  // aa[100] = 200;



	return 0;
}

void fun(int n)
{
	// 动态分配内存的大小
	int *p = (int *)malloc(sizeof(int) * n);
	return;
}


