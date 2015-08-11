#include <stdio.h>
int main(int argc, char const *argv[])
{
/*
	定义如下数组：
  	int  a[5] = {5,10,56,33,6}
	int *p = a;

	计算如下值,说明求解过程：
	*(p++) = ?
	(*p)++ = ?
*/
	int  a[5] = {5,10,56,33,6};
	int *p = a;

	// printf("*(p++) = %d\n",*(p++)); // 5
	// printf("*(++p) = %d\n",*(++p)); // 10

	// printf("(*p)++ = %d\n",(*p)++); // 5
	 printf("++(*p)++ = %d\n",++(*p)); // 6

	return 0;
}