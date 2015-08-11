#include <stdio.h>
#include <string.h>
int main(int argc, char const *argv[])
{
	// 1、编写一个程序，使用键盘输入两个字符串，并将两个字符串连接起来，不要使strcat函数。
	char s1[20];
	char s2[10];
	printf("输入第一个字符串：\n");
	gets(s1);
	printf("输入第二个字符串：\n");
	gets(s2);

	int len1 = strlen(s1);
	int len2 = strlen(s2);
	for (int i = 0; i < len2; ++i)
	{
		s1[len1 + i] = s2[i];
	}

	puts(s1);

	// 2、编写一个程序，将字符数组a中的全部字符复制到字符数组b中。不要使用strcpy函数。
	char a[10] = "哈哈";
	char b[10];
	int len_a = strlen(a);
	for (int i = 0; i < len_a; ++i)
	{
		b[i] = a[i];
	}
	puts(b);


	// 3、输入一段字母字符串，统计元音字母和辅音字母的个数。注：元音字母 有：a，e，i，o，u五个，其余为辅音字母。
	char str_[20];
	char ss[10];
	printf("输入一个字母字符串：\n");
	gets(str_);
	int len_ = strlen(str_);
	int count_y = 0;
	for (int i = 0; i < len_ ; ++i)
	{
		char c = str_[i];
		if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
		{	
			ss[count_y] = c;
			count_y++;
		}
	}
	printf("元音字母有：%s\n",ss);
	printf("str_有%d个元音字母和%d个辅音字母。\n",count_y,len_ - count_y);
    
	return 0;
}



