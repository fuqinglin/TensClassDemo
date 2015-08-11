#include <stdio.h>

// struct Student {
// 		char *name;
// 		float score;
// 		long stuNumber;
// 		char *sex;
// 	};
int main(int argc, char const *argv[])
{
	//-------------------------结构体-------------------------------
	// 1、结构体的定义
	// 方式一：
    struct Student {  // 这里定义的只是一个类型
		char *name;     // 8
		float score;    // 4
		long stuNumber; // 8
		char *sex;      // 8
	};
	// 定义一个结构体变量
	struct Student stu = {(char *)"zhangsan",90.0,987654321,(char *)"男"}; // 初始化的数据顺序要跟定义时的顺序保存一致。

	char *name = "fjkeoiuoouopuiyuooiuyiyoi";
	float a = 100.9;
	float *p = &a;
	int len = sizeof(p); // 所有的指针变量的字节数都是 8 ，不管是 int* ，char *，float * 都一样
	int len_stu = sizeof(stu);
	printf("len_stu = %d\n",len_stu); // 结构体变量的字节数不是所有成员的字节数子和，而是任意成员字节数的整数倍。


	// 方式二
	struct Student_1 {
		char *name;
		float score;
		long stuNumber;
		char *sex;
	}stu1 = {(char *)"zhangsan",90.0,987654321,(char *)"男"},stu2;
	// stu1 ＝ {(char *)"zhangsan",90.0,987654321,(char *)"男"}; 错误：不能这个样赋初始值

	// 方式三：
	struct {
		char *name;
		float score;
		long stuNumber;
		char *sex;	
	}stu_1,stu_2; // 定义结构体变量并且创建两个结构体变量。


	// 结构体的赋值和取值，使用点语法
	// 赋值
	stu_1.name = "kkk";
	stu_1.score = 90.9;
	stu_1.stuNumber = 890078686;
	stu_1.sex = "女";

	// 取值
	char *name = stu_1.name;
	float score = stu_1.score;
	long stuNum = stu_1.stuNumber;
	char *sex = stu_1.sex;

	printf("name:%s, score:%.2f, stuNum:%ld, sex:%s\n",name,score,stuNum,sex);

	return 0;
}



