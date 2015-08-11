#include <stdio.h>
int main(int argc, char const *argv[])
{
	
	// 1、给定一个大写字母A，输出其小写字母
	char c = 'A';
	char c1 = c + 32; // 大小写字母ASCII值相差 32
	printf("c1 = %c \n",c1);
	

	// 2、编写程序，从键盘输入一个以秒为单位的时间数，将其换算成几小时几分几秒，然后输出。
	int timeValue;
	printf("请输入一个秒数：\n");
	int h,m,s;
	scanf("%d",&timeValue); // & 取地址符，取得变量timeValue所在的内存地址，将输入的值赋给变量
	h = timeValue / (60 * 60);
	m = timeValue % 3600 / 60;
	s = timeValue % 60;
	printf("%d秒有%d小时%d分钟%d秒\n",timeValue,h,m,s);


	//3、从键盘输入两个整数给变量x和y，然后输出x和y的值，最后交换x和y的值并输出。
	int x,y;
	int temp;
	printf("请输入两个整数：\n");
	scanf("%d,%d",&x,&y);
	printf("交换前：x = %d,y = %d\n",x,y);

	temp = x;
	x = y;
	y = temp;

	printf("交换后：x = %d,y = %d,temp = %d\n",x,y,temp);

	return 0;
}