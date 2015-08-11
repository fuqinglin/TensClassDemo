#include <stdio.h>
int main(int argc, char const *argv[])
{
	//----------------------switch选择语句---------------------------

	char c = '/';
	// float f = 4233.909;

	int a = 200,b = 300;
	switch (c) { // switch（）中只能是有具体值的变量或者变量表达式，并且只能是整形或者char类型

		// if ()
		// {

		// }
		case '+': // case后面的是整型或者char类型常量，不能使用变量
			printf("a + b = %d\n",a + b);
			break;
		case '-':
			printf("a - b = %d\n",a - b);
			break;
		case '*':
			printf("a * b = %d\n",a * b);
			break;
		case '/':
			printf("a / b = %.2f\n",(float)a / b  );
			break;
		default:
			printf("没有这个运算！\n");
			break;
	}

	return 0;
}