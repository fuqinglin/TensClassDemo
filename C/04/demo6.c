#include <stdio.h>
// 递归函数

// int fun()
// {
// 	int v = fun();
// 	printf("ddd\n");
// 	return 0;
// }

// 递归函数：函数内部调用自己本身，达到一个循环调用的作用。必须有一个终止条件，用于结束递归

// 求 5！,使用递归方式 5 * 4 * 3 * 2 *1


// 5 * fun(4) ->  4 * fun(3)   -> 3 * fun(2) -> 2 * fun(1) - >fun(1) = 1	
// fun(5)=5 * 24  <-fun(4)=24  <-fun(3)=6     <- fun(2) = 2   <-  1

int fun(int n)
{
	if (n == 1)  // 终止递归的条件
	{
		return 1;
	}

	return n * fun(n -1);
}


int main(int argc, char const *argv[])
{
	int v = fun(5);
	printf("v = %d\n",v);
	return 0;
}

