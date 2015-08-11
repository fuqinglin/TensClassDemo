#include <stdio.h>
int main(int argc, char const *argv[])
{
	
	//1、输入一个成绩，输出其等级，使用switch语句完成。

	int score;
	printf("请输入一个成绩：\n");
	scanf("%d",&score);
	switch(score / 10) {

		case 10:
			printf("满分！\n");
			break;
		case 9:
			printf("优秀！\n");
			break;
		case 8:
		{
			int a = 100;
			printf("良好 a = %d！\n",a);
			break;
		}	
		case 7:
			printf("中等！\n");
			break;
		case 6:
			printf("及格！\n");
			break;
		default:
			printf("不及格！\n");
			break;
	}


	return 0;
}