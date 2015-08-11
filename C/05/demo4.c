#include <stdio.h>
// #define R  = 10  错误：不能使用 = 
// #define R 10;  错误：宏定义不能使用分号结尾

// 宏名一般使用大写，目的跟变量区别
#define R 10                    // 使用宏定义取代一个数值
#define AVG (x + y) / 2         // 使用宏定义取代一个计算表达式
#define AVG_(a,b) (a + b) / 2   // 带参数的宏定义，参数不需要指定数据类型，可以根据传入的值制动确定类型。
#define MAX(x,y) x > y ? x : y

// #undef R // 用于结束某个宏的有效范围

int main(int argc, char const *argv[])
{
	//-----------------------宏定义#define------------------------

	printf("area = %.2f\n",R * R * 3.14);

	float x = 100;
	float y = 200;
	printf("avg = %.2f\n",AVG);
	printf("avg_ = %.2f\n",AVG_(10.10,20.20));

	printf("max = %d\n",MAX(100,400));

	return 0;
}


// int f()
// {
// 	printf("area = %.2f\n",R * R * 3.14);
// }

float avg(float a,float b)
{
	return (a + b) / 2;
}

