#include <stdio.h>
int main()
{
	//----------------变量----------------
	int a = 100;
	a = 200;
	printf("a = %d\n",a);

	// 先定义后赋值
	int a1,b1,c1;
	a1 = 100;
	b1 = 200;
	c1 = 300;

	// 定义多个变量并且赋值
	int a2 = 200,b2 = 300,c2 = 300;

	//---------------常量-------------------
	// 5,a,d 
	const int c = 300; // 使用关键字const 表示一个常量
	// c = 500; 错误：常量的值是固定的，不可重新赋值
	printf("c = %d\n",c);

	//-----------------标示符------------------
	// 只能又字母、数字、下划线组成，数字不能用于开头
	int ab1 = 100;
	// int 1ab = 200; 错误
	int _ab = 400;
	// int ~da = 500; 错误

	// int const  = 100; 错误：不能使用关键字作为变量名称

	// int ab1 = 200; 同一个作用域下不能有相同的变量名称

	int aaa = 1;
	int AAA = 2; // 变量的名称区分大小写


	//------------------类型转换-------------------
	
	// 1、自动转换
	int i = 100;
	i = 3.1535; // 制动转换
	printf("i = %d\n",i);

	double d = 43.34;
	int i1 = 100;
	printf(" d + i1 = %f\n",d + i1); // 大类型 和 小类型 运算结果自动转为大类型
	// 基本数据类型的大小顺序：char,shor ——> int ——>long ——> float ——> double

	// 2、强制转化
	double d1 = 342.433;
	double d2 = 34234.4433;
	printf("d1 + d2 = %d\n",(int)(d1 + d2)); // 将double 强制转为 int 类型

	int ii = (int)432343.3545;

	//----------------------sizeof()计算不同数据类型所占的字节大小-----------------
	int ii1 = 200;
	// int len1 = sizeof(ii1);
	int len1 = sizeof(int); // 4
	int len2 = sizeof(long); // 8
	int len3 = sizeof(float); // 4
	int len4 = sizeof(double); // 8
	int len5 = sizeof(char); // 1
	int len6 = sizeof(short); // 2

	printf("len2 = %d\n",len2);
}



