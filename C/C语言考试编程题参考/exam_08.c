#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// 8、写一函数，将字符数组S1中的全部字符复制到字符数组S2中，不用strcpy函数

char *copyString(char *a,char *b);

int main(int argc, char const *argv[])
{
	char a[2];
	char b[] = "qwertyuiopderiwqe";
	printf("a = %s\n",copyString(a,b));
	return 0;
}

// 拷贝的字符串长度不能大于数组的最大容量
char *copyString(char *a,char *b)
{
	int len_b = strlen(b);
	for (int i = 0; i < len_b; ++i)
	{
		a[i] = b[i];
	}

	return a;
}

