#include <stdio.h>
int main(int argc, char const *argv[])
{
	//------------------------双重指针(指向指针的指针)---------------------------
	int a = 10;
	int *p = &a;
	int **pp = &p;
	printf("p的地址：%p\n",&p);   // p的地址：0x7fff571c1c70
	printf("pp = %p\n",pp);      // 0x7fff57d18c70   变量p的地址
	printf("pp的地址：%p\n",&pp); // pp的地址：0x7fff571c1c68
	printf("a的地址：%p\n",&a);   // a的地址：0x7fff571c1c7c

	printf("*p = %d\n",*p);     // 10
	printf("*pp = %p \n",*pp);  // *pp = 0x7fff571c1c7c 变量a的地址。
	printf("**pp = %d\n",**pp); // 10  a的值

	
	return 0;
}