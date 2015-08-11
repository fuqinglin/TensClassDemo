#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
int main(int argc, char const *argv[])
{
	//---------------------常用的系统库函数-------------------------

	// 1、求绝对值 abs() fabs() 依赖<math.h> <stblid.h>
	int a = -1000;
	int b = abs(a);       // 求整数的绝对值
	printf("b = %d\n",b);
	float f = -432.34;
	float ff = fabs(f);  // 求浮点数的绝对值
	printf("ff = %.2f\n",ff);

	// 2、求平方根sqrt()、求次方pow(x,y) 依赖<math.h>
	float s = sqrt(234.3); // ()里可以是 int float double
	printf("s = %f\n",s);

	long ss = pow(2,10); // 求 2的10次方
	printf("ss = %ld\n",ss);

	// 3、正弦值sin(),余弦值cos()  依赖<math.h>
	float sf = sin(M_PI); //()是弧度值，M_PI:π、 M_PI_2:π/2， M_PI_4 π/4 
	printf("sf = %.2f\n",sf);

	float cf = cos(M_PI_2);
	printf("cf = %.2f\n",cf);

	// 4、随机产生整数的函数rand() 依赖 <stblid.h>
	srand(time(0)); // 随机种子，任何时间都产生不同的随机数 依赖<stblid.h>,<time.h>
	int var = rand(); // 产生一个0~ MAX 的一个整数
	printf("var = %d\n",var);
	int var1 = rand() % 10; // 产生 10 以内的随机整数
	printf("var1 = %d\n",var1);

	for (int i = 1; i <= 50; ++i)
	{
		int number = rand() % 10;
		printf("%d ",number);
		if (i % 5 == 0)
		{
			printf("\n");
		}
	}

	return 0;
}