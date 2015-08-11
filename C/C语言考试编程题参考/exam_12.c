#include <stdio.h>
/*12、声明描述日期（年、月、日）的结构体类型。
      编写函数以参数方式传入一个日期，计算相应日期在对应年是第几天，并以函数值形式返回结果。
*/

struct Date
{
	int year;
	int month;
	int day;
};

int dateNumbers(struct Date date);

int main(int argc, char const *argv[])
{
	struct Date date;
	printf("请输入年份，月份和日期(用-隔开)：\n");
	scanf("%d-%d-%d",&date.year,&date.month,&date.day);
	printf("这是%d年的第%d天\n",date.year,dateNumbers(date));
	
	return 0;
}

int dateNumbers(struct Date date)
{
	int totalDays = 0; // 统计总共的天数
	int arr[12] = {31,28,31,30,31,30,31,31,30,31,30,31};

	// 根据月份计算天数
	for (int i = 0; i < date.month - 1; ++i)
	{
		totalDays += arr[i];
	}
	totalDays += date.day;

	// 判断平年还是闰年
	if(date.year % 100 == 0)
	{
		if(date.year % 400 == 0 && date.month > 2)
		{
			totalDays = totalDays + 1;
		}
	}
	else
	{
		if(date.year % 4 == 0 && date.month > 2)
		{
			totalDays = totalDays + 1;
		}		
	}
	return totalDays;
}