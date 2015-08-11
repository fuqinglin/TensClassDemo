// int value = 1000; // 外部全局变量，其他文件可以访问。前提是其他文件得声明这个变量
// static int value = 1000; // 使用static 修饰的全局变量，也叫内部变量，只能在当前文件使用，其他文件都不能访问。

extern int sum(int a, int b) // 外部函数，其他文件可以使用，extern修饰，默认的函数都是外部函数，所有extern一般省略
{
	return a + b;
}

static int sub(int a, int b) // 内部函数使用static修饰，只能在当前文件使用，外部文件不能调用
{
	return a - b;
}