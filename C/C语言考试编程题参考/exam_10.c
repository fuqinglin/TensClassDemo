#include <stdio.h>
// 10、定义一个宏定义PI= 3.14 ，并设计一个程序可以对输入圆半径求其面积

#define π 3.14
int main(int argc, char const *argv[])
{
	float r = 2;
	printf("圆的面积：%.2f\n",π * r * r);
	return 0;
}