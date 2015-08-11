#include <stdio.h>
enum Week // 定义一个枚举类型，包含七个枚举值
{
	mon,        // 0
	tue = 100, // 1
	wed,
	thu,
	fri,
	sta,
	sun
};

void doWork(enum Week w);

int main(int argc, char const *argv[])
{
	//------------------------枚举类型------------------------
	enum Week w1 = mon;
	printf("w1 = %d\n",w1);

	// doWork(w1);
	doWork(thu);

	return 0;
}

// 枚举类型作为函数参数传递
void doWork(enum Week w)
{
	if (w == mon || w == tue || w == wed || w == fri || w == sta)
	{
		printf("上课！\n");
	} 
	else if(w == thu)
	{
		printf("自习！\n");
	}
	else if(w == sun)
	{
		printf("休息！\n");
	}
}




