#include <stdio.h>
int main(int argc, char const *argv[])
{
	//1、通过键盘输入的方式，将学生的信息保存到结构体中。
	struct Student
	{
		// char *name; // 这种方式定义的字符串类型，保存的是字符串的地址。
		char name[20];
		int age;
		long stuNum;
	};

	struct Student stu;
	printf("请输入学生的信息：\n");
	printf("姓名：\n");
	scanf("%s",stu.name);
	printf("年龄：\n");
	scanf("%d",&stu.age);
	printf("学号：\n");
	scanf("%ld",&stu.stuNum);

	printf("name:%s , age: %d , stuNum:%ld\n",stu.name,stu.age,stu.stuNum);


	return 0;
}