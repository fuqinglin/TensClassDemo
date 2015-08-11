#include <stdio.h>
int main(int argc, char const *argv[])
{
	
	//------------------选择结构------------------------

	// 1、if语句
	int score = 85;
	if (score > 80 && score < 90) //（）里是条件语句，只有条件成立才执行if{}中的语句
	{
		printf("成绩良好！\n");
	}

	// 2、if-else 语句
	int score1 = 90;
	if (score1 >= 90)
	{
		printf("优秀！\n");
	}
	else {   // else 后面不能添加条件

		printf("不优秀！\n");
	}

	if(score1 >= 90) printf("优秀！\n"); // if后面只有一条语句可以不用加{},不建议这样写
	printf("双方家里撒风景阿卡丽\n");


	// 3、if-else if-else
	int score2 = 78;

	//方式一：
	if (score2 >= 90)
	{
		printf("优秀！\n");
	}
	if (score2 >= 80 && score2 < 90)
	{
		printf("良好！\n");
	}
	if (score2 >= 70 && score2 < 80)
	{
		printf("合格！\n");
	}
	if (score2 >= 60 & score2 < 70)
	{
		printf("及格！\n");
	}
	if (score2 < 60)
	{
		printf("不及格！\n");
	}

	// 方式二：
	if (score2 >= 90)
	{
		printf("--优秀！\n");
	} 
	else if(score2 >= 80)  // 前面的条件不成立并且if后面的条件成了，才执行｛｝里的语句
	{
		printf("--良好！\n");
	}
	else if(score2 >= 70)
	{
		printf("--合格！\n");
	}
	else if(score2 >= 60)
	{
		printf("--及格！\n");
	}
	else 
	{
		printf("--不及格！\n");
	}


	return 0;
}



