#include <stdio.h>
int main(int argc, char const *argv[])
{
	//--------------------------结构体数组--------------------------

	struct Student
	{
		char *name;
		int age;
		long stuNum;
	};

	struct Person
	{
		char *name;
		int age;
		long stuNum;
	};

	struct Student stu1 = {"qqq",30,90438509};
	struct Student stu2 = {"www",20,98798790};
	struct Person p;

	struct Student stus[2];	// 结构体类型的数组
	stus[0] = stu1;
	stus[1] = stu2;
	// stus[1] = p; // 错误：结构体数组只能保存对应类型的结构体数据

	for (int i = 0; i < 2; i++)
	{
		struct Student stu = stus[i];
		printf("name:%s,age:%d,stuNum:%ld\n",stu.name,stu.age,stu.stuNum);	
	}

	//-----------------------------------结构体指针---------------------------------

	struct Student s = {(char *)"xxx",20,89753380954};
	struct Student *sp = &s; // 将结构体变量的地址赋值给结构体指针，sp 指向了 s。
	// struct Peson *pp = &s; 错误的。

	// 使用结构体指针去操作结构体变量 -> 指针操作符，用于访问所指向的结构体变量的成员。
	sp->name = (char *)"kkkkk";
	sp->age = 30;
	sp->stuNum = 3809348500;

	printf("name:%s,age:%d,stuNum:%ld\n",sp->name,sp->age,sp->stuNum);


	return 0;
}