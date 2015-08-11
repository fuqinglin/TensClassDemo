#include <stdio.h>

int changFun(int *);
int main(int argc, char const *argv[])
{
	//---------------------地址的概念--------------------------
	// 指针就是这个内存地址
	int a = 20;
	printf("a的地址：%p\n",&a); // a的地址：0x7fff578b5c7c,这个是变量的首地址

	float f = 343.43;
	printf("f的地址：%p\n",&f); // f的地址：0x7fff5cd15c78

	//-----------------------指针变量----------------------------
	// 指针变量：用于保存地址的变量
	int i = 200;
	int *p = &i; // int * 是整型指针类型，p是指针变量，用于保存整型数据的地址
	printf("p = %p\n",p); // 0x7fff5bbb8c74

	float ff = 335.4;
	// p = &f; // 错误的：指针变量只能保存对应类型的变量的地址
	float *fp = &ff;

	char *c = "equrpoewrup";

	//----------------------使用指针去操作变量-----------------------

	int var = 100;
	int *ip = &var;  // 这个的int *是类型
	int value = *ip; // *ip 获取指针变量ip保存的地址对应的变量的数值。这个 * 是指针操作符，用于访问所指向的变量
	*ip = 3000;	    //  通过指针的方式给变量赋值
	printf("value = %d\n",value);
	printf("var = %d\n",var);

	var++;
	printf("var = %d\n",var);

	printf("1_ip = %p\n",ip); // 0x7fff5bce5c4c
	ip++;
	printf("2_ip = %p\n",ip); // 0x7fff5bce5c50
	printf("ip对应的数值：%d\n",*ip);
/* 
   指针进行加减运算不是数值的加减，而是所指向地址的偏移。
   偏移的量取决于所保存的地址对应数据的类型。
   int 是4个字节，double是8个字节
 */
	double d = 4231.344;
	double *dp = &d;
	printf("1_dp = %p\n",dp); // 0x7fff5bce5c30
	dp++; 
	// dp--;// 同理 
	printf("2_dp = %p\n",dp); // 0x7fff5bce5c38
	printf("dp对应的数值：%f\n",*dp); // 获取的是内存中的垃圾值


	//------------------------指针的运用----------------------
	int m = 200;
	printf("m = %d\n",changFun(&m));
	return 0;
}

int changFun(int *p)
{
	int n = *p = 3000;
	return n;
}



