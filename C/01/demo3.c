#include <stdio.h>
int main(int argc, char const *argv[])
{
	//---------------------C语言常用运算-----------------------

	// 1、算术运算 + - * / %
	// 加法，减法，乘法
	int a = 100;
	float f = 23.34;
	float r = a + f;
	float r1  = f - a;
	float r2 = f * a;
	printf("r = %.2f,r1 = %.2f,r2 = %.2f\n",r,r1,r2);

	// 除法
	float r3 = (float)10 / 3;
	printf("r3 = %f\n",r3);

	float r4 = (float)2 / 3;
	printf("r4 = %f\n",r4);

	// 取余、求模运算，余数的正负取决于被取余的数的符号，浮点类型不能取余运算
	int aa = -100;
	int r5 = aa % -3;
	printf("r5 = %d\n",r5);

	float ff = 3443.34;
	// float r6 = ff % 3; 错误
	// printf("r6 = %d\n",r6);


	// 2、赋值运算
	int bb = 100;
	// bb = bb + 200;
	bb += 200; // 扩展赋值运算， bb = bb + 100 等价于 bb += 100;其他运算同理
	bb -= 100;
	bb *= 2;
	bb /= 5;
	printf("bb = %d\n",bb);

	// 3、自增自减运算
	int i = 10;
	i++; // 等价于 i= i+1
	++i; // 等价于 i= i+1
	i--; // 等价于 i= i-1
	--i;
	printf("i = %d\n",i);

	int i1 = 20;
	int i2 = 20;
	int r7 = i1++;
	int r8 = ++i2;
	/* i++和++i单独使用没有区别，
	当需要赋值给一个变量时就有区别了：i++先赋值后自增，++i先自增后赋值。i--和--i 同理*/
	printf("r7 = %d,i1 = %d,r8= %d,i2 = %d\n",r7,i1,r8,i2);


	// 4、关系运算 > < == != <= >=
	// 关系运算的结果只有两种：真或假 0 或 1， 0 表示假 1表示真
	int q = 4 > 5; // q = 0;
	int q1 = 3 == 5; // q1 = 0;

	int q2 = 3 * 5 > 5 + 6; // q2 = 1; 先算算术运算再关系运算。 优先级：算术运算 > 关系运算
	printf("q2 = %d\n",q2);


	// 5、逻辑运算 或||，与&&，非！
	// 逻辑运算结果也是只有两种：0 或者 1，假 或者 真
	int w = 20;
	int y = 0;
	int x = w || y;
	printf("x = %d\n",x);

	int x2 = 4 > 5 || 6 > 7; // || 或运算，只要有一个为真结果就是真
	printf("x2 = %d\n",x2);

	int x3 = 5 < 7 && 8 < 7;
	int x4 = 5 < 7 && 8 > 7; // && 与运算，只有两个同时为真结果才为真

	int x5 = !20;
	int x6 = !0; // x6 = 1;  // 非运算，也叫取反运算。非 0 就是真
	printf("x5 = %d\n",x5);


	// 6、三目运算

	// ？前面的表达式成立取 ？ 后面值，否则取 ： 后面的值
	int soure = 80;
	int a1 = 20, a2 = 30;
	int result = soure > 80 ? a1 + a2 : a1 - a2;
	printf("result = %d\n",result);

	return 0;
}



