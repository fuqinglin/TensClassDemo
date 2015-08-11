#include <stdio.h>
#define A 100
#define DEBUG

// #if A > 100
// {
// 	printf("a > 100\n");	// 函数不能在函数外部调用
// }
// #else
// {
// 	printf("a <= 100\n");
// }	
// #endif

// 错误
	// if ()
	// {
	// }
	// else
	// {	
	// }

// int a;
// #if A > 100
// 	a = 200; // 错误：这个是在编译前做的事，此时a还没有定义
// #else
// 	int a = 100; // 选择编译这里面的语句
// #endif

int main(int argc, char const *argv[])
{
	//---------------------条件编译--------------------
	// printf("a = %d\n",a);

	// 用于判断指定的宏有没有定义
	#ifdef DEBUG
		printf("宏定义了！\n");
	#else
		printf("宏没有定义！\n");
	#endif

	return 0;
}

