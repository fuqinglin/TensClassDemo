#include <stdio.h>
#include <string.h>

//7、写一函数，将2个字符串连接，不使用strcat函数
char *joinString(char [],char []);

int main(int argc, char const *argv[])
{
	char s1[20] = "abcdeerrerqwe";
	char s2[] = "fghigkerwr";
	char *newStr = joinString(s1,s2);
	printf("拼接后的字符串：%s\n",newStr);
	return 0;
}

// 字符串长度不能超过最大数组容量
char *joinString(char a[],char b[])
{
	int len_a = strlen(a);
	int len_b = strlen(b);
	for (int i = 0; i < len_b ; ++i)
	{
		a[len_a + i] =  b[i];
	}

	return a;
}