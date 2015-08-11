#include <stdio.h>
int main(int argc, char const *argv[])
{
	
	/*
		1、输入一个数输出如下格式，例如输入 5 打印如下：
			5 + 0 = 5
			4 + 1 = 5
			3 + 2 = 5
			2 + 3 = 5
			1 + 4 = 5
			0 + 5 = 5
	*/

	printf("请输入一个整数：\n");
	int value;
	int value1 = 0;
	scanf("%d",&value);
	while(value >= 0)
	{
		printf("%d + %d = %d\n",value,value1,value + value1);
		value--;
		value1++;
	}


	return 0;
}