#include <stdio.h>
int main(int argc, char const *argv[])
{
	//-----------------------字符串--------------------------

	// 1、定义字符串
	// 方式一：
	char str[6] = {'a','b','c','d','e','\0'}; // \0 字符串的结束标志，占用一个字节空间
	printf("str = %s\n",str);

	// 方式二：
	char str1[6] = "abcde"; // 字符数组的大小要在字符个数 +1,因为默认有个 \0
	printf("str1 = %s\n",str1);

	//方式三：
	char str2[] = "werqweroipqutio"; // 不指定数组大小，由初始值决定
	printf("str2 = %s\n",str2);
	str2[1] = 'H';
	// str2 = "asdfghjkl"; 错误的：使用数组形式定义的字符串不能直接赋值新的字符串
	printf("str2 = %s\n",str2);

	// 方式四：
	char *str3 = (char *)"pieotuetoiur"; // 使用字符指针方式定义，后面的字符串是一个常量，保存在内存的常量区
	// str3[0] = 'Q'; 错误的,这种方式定义的字符串不能修改其中的单个字符
	// str3 = "zxcvbnm"; // 正确的
	printf("str3 = %s\n",str3);


	//----------------------------对字符串的操作--------------------------------
	char s[] = "Hello C";
	char c = s[6];      // 根据下标获取单个字符
	printf("c = %c\n",c);

	// 字符串的遍历
	int len = sizeof(s); // 计算字符的个数包含 \0
	printf("len = %d\n",len); // len = 8;包含 \0
	for (int i = 0; i < len - 1; ++i) // len -1 不包含 \0
	{
		char c = s[i];
		printf("%c\n",c);
	}

	char ss[] = "哈哈";  // UTF-8、GBK、GB-2312、
	int len1 = sizeof(ss);
	// printf("s = %c\n",ss[0]);
	printf("len1 = %d\n",len1);


	return 0;
}




