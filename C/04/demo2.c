#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[])
{
	//-----------------------字符串处理常用的函数-----------------------------

	// 1、输入输出函数
	char s[10];
	// scanf("%s",&s); 错误：数组名本身就是一个地址，所有输入的时候不需要使用 & 取地址符
	scanf("%s",s);
	printf("s = %s\n",s);

	// 2、gets()输入、puts()输出
	char s1[20];
	printf("请输入字符串：\n");
	gets(s1); // 用于字符串的输入
	puts(s1); // 用于字符串的输出

	// 3、字符串的拷贝，strcpy();
	char str_1[10] = "Hello";
	char str_2[20] = "World";
	strcpy(str_1,str_2);  // 将str_2 拷贝到str_1中，相当于用str_2替换str_1.但是要保证str_1有足够的存储空间,依赖<string.h>
	printf("str_1 = %s",str_1);
	printf("str_2 = %s\n",str_2);

	// 4、字符串的拼接 strcat();
	char s_1[20] = "呵呵";
	char s_2[10] = "嘻嘻";
	strcat(s_1,s_2); // 将s_2 拼接到s_1后面,要保证s_1有足够的存储空间，依赖<string.h>
	puts(s_1);

	// 5、计算字符串字符的个数strlen(),不包含 \0
	char s_3[] = "123456789";
	int len = strlen(s_3); // 计算字符的个数，跟sizeof()区别开
	printf("len = %d\n",len);
	for (int i = 0; i < len; ++i)
	{
		printf("%c\n",s_3[i]);
	}



	return 0;
}