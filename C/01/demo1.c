#include <stdio.h>
int main()
{
	/* a 表示一个整形的变量，此刻a就代表了100，
		变量的实质就是在内存中开辟一块存储区域，
		用于保存对应的值
	 */
	int a = 100;
	printf("a = %d\n",a); // %d：整形数据格式符

	float f = 154540.32321424432; // 单精度浮点类型的有效位是 7 位
	printf("f = %f\n",f); // %f: 浮点类型格式符，默认输出六位小数位。%.2f表示保留两位小数位

	double d = 2143.34343545453453445; // 双精度浮点类型，有效位是 16 位
	printf("d = %.17f\n",d);

	char c = 'a'; // char 表示字符型，只能保存单个的字符
	// char c = 'aa'; // 错误
	// char c = '哈'; // 错误
	char c1 = 102; // ASCII 码值对应的字符
	printf("c1 = %c\n",c1); 

	int a1 = 'd'; // 将字符对应的ASCII码保存到整型变量中
	printf("a1 = %d\n",a1);

	// int a2 = 327491747947238; int 不能保存更大的整型数
	long l = 57984035975989;  // long 长整型，可以保存更大的整数，格式符是 %ld
	printf("l = %ld\n",l);

	short s = 4123; // short 短整型，保存更小的整数
	printf("s = %d\n",s);

	bool b = 0; // 布尔类型，只有两种值 0 1或者是假、真

	return 0;
}