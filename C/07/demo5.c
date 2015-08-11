#include <stdio.h>

// typedef关键字 用于对数据类型取别名

typedef int INT;
typedef char * string;
typedef double CGFloat;

typedef int (*FUN)(int,int); // 给函数指针取别名，这个别名就是 FUN

struct Student 
{
	string name;
	INT age;
	CGFloat score;
};
typedef struct Student Stu; // 结构体别名Stu

int sum(int a, int b)
{
	return a + b;
}

int fun(FUN p,int, int);

int main(int argc, char const *argv[])
{
	//-------------------------typedef关键字--------------------

	INT i= 100;
	printf("i = %d\n",i);

	string s = "eutoeut";
	printf("s=%s\n",s);

	struct Student stu;
	stu.name = "zhangsan";
	stu.age = 30;
	stu.score = 90.0;

	// 使用结构体的别名定义结构体变量，可以省略struct关键字
	Stu stu1 = {"xxxx",20,89.0};

	int (*SUM)(int,int) = sum;


	int result = fun(sum,100,300);
	printf("result = %d\n",result);

	return 0;
}

// FUN p 等价于 int (*p)(int a,int b);
int fun(FUN p,int a, int b)
{
	int v = p(a,b);
	return v;
}


