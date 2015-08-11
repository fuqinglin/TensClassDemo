#include <stdio.h>
int main(int argc, char const *argv[])
{
	//1、键盘输入，使用二维数组保存两名学生的三门课成绩
	int scores[2][3];
	for (int i = 0; i < 2; ++i)
	{
		printf("请输入第%d个学生的成绩：\n",i + 1);
		for (int j = 0; j < 3; ++j)
		{
			printf("请输入第%d门成绩：\n",j + 1);
			int s;
			scanf("%d",&s);
			scores[i][j] = s;
		}
	}

	//2、将二维数组转化为一维数组
	int a[6];
	int index = 0;
	for (int i = 0; i < 2; ++i)
	{
		for (int j = 0; j < 3 ; ++j)
		{
			a[index] = scores[i][j];
			index++;
		}
	}

	// 输出数组
	for (int i = 0; i < 6; ++i)
	{
		printf(" %d",a[i]);
	}


	return 0;
}