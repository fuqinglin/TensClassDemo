#include <stdio.h>
int main(int argc, char const *argv[])
{
	// 课堂练习三：
	float score;
	float maxScore = 0;
	float sumScore;
	for (int i = 0; i < 6; ++i)
	{
		printf("请输入第%d门成绩：\n",i + 1);
		scanf("%f",&score);
		if (score > maxScore)
		{
			maxScore = score;
		}
		sumScore += score;
	}
	printf("平均分：%.2f\n",sumScore / 6);
	printf("最高分：%.2f\n",maxScore);


	// 1、100内的所有奇数和并且打印每5个为一行
	int count = 0;
	int sum = 0;
	for (int i = 0; i <= 100; ++i)
	{
		if (i % 2 != 0)
		{	
			printf("%d\t",i);
			sum += i;
			count++;
		}

		if (count % 5 == 0)
		{
			printf("\n");
		}
	}
	printf("sum = %d\n",sum);


	//2、打印九九乘法表
	for (int i = 1; i <= 9 ; ++i)
	{
		for (int j = 1; j <= i; ++j)
		{
			printf(" %d * %d = %d\t",j,i,i * j);
		}
		printf("\n");
	}


	// 3、计算 1！+ 2! + 3! + 4! + 5! 结果

	// 1 * 1 + 2 * 1 + 3 * 2 *1 + 4 * 3 * 2 * 1 + 5 * 4 * 3 * 2 * 1
	int _sum = 0;
	for (int i = 1; i <= 5; ++i)
	{	
		int v = 1;
		for (int j = i; j > 0; --j)
		{	
			 v *= j;
		}
		_sum += v;
	}
	printf("_sum = %d\n",_sum);


	// 4、打印出100～999之间的所有水仙花数
	int h,t,u;
	for (int i = 100; i < 1000 ; ++i)
	{
		h = i / 100;
		t = i % 100 / 10;
		u = i % 10;
		if (h*h*h + t*t*t + u*u*u == i)
		{
			printf("%d ",i);
		}
	}

	// 5、打印空心矩形
	printf("请输入矩形的长和高：\n");
	int lenght,height;
	scanf("%d,%d",&lenght,&height);
	for (int i = 0; i < height; ++i)
	{
		for (int j = 0; j < lenght; ++j)
		{
			if (i == 0 || i == height - 1)
			{
				printf("* ");
			} 
			else if(j == 0 || j == lenght - 1)
			{
				printf("* ");
			} 
			else 
			{
				printf("  ");
			}
		}

		printf("\n");
	}

	/*
      5、打印以下图案：     
         *                      
        ***                   
       *****   
      *******
	*/

      printf("请输入打印的行数：\n");
      int row;
      scanf("%d",&row);

      for (int i = 1; i <= row; i++)
      {
      	for (int j = 1; j < i+row; j++)
      	{
      		if (j > row - i)
      		{
      			printf("*");
      		}
      		else
      		{
      			printf(" ");
      		}
      	}

      	printf("\n");
      }

	return 0;
}