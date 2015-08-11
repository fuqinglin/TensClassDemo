#include <stdio.h>

#include "string.h" // 正确的
// #include <fun.c> 错误：<>只能包含系统库文件，当前自己写的文件只用用 “”包含
#include "fun.c"

/*#include <>和#include “  ”的区别
	#include <>:直接去系统文件中找对应的文件，只能用于包含系统文件。
    #include “ ”: 先在当前目录中找对应的文件，如果没有再去系统文件中找。可用于包含当前目录文件和系统文件。
*/

void function(int a, int b);
int main(int argc, char const *argv[])
{
	//----------------------#include关键字----------------

	char *s = (char *)"qwertyuiop";
	int count = strlen(s);
	printf("count = %d\n",count);
	function(1000,332);
	return 0;
}
