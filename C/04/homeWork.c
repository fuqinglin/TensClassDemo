#include <stdio.h>


int fbNumber(int);
int main(int argc, char const *argv[])
{
	//1、编写程序，输入任意一个1～10之间的整数，输出它对应的英文单词。

	// char a[100] = "ijfklj";

	char *number[10] 字符串数组，保存的元素是字符串
	char *number[10] = {"one","two","three","four","five","six","seven","eight","nine","ten"};
	printf("请输入一个1～10中任意整数：\n");
	int num;
	scanf("%d",&num);
	char *str = number[num - 1];
	puts(str);


	/*2、输出指定位置的斐波那契数，并且打印它之前的所有斐波那契数。（使用递归）
       注：斐波那契数列指的是这样一个数列 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233，377，610……
	*/
     printf("请输入一个整数：");
     int index;
     scanf("%d",&index);
     printf("第%d个斐波那契数是：%d\n",index,fbNumber(index));

     // 输出指定位置之前的所有的斐波那契数
     for (int i = 1; i <= index; ++i)
     {
     	printf("%d ",fbNumber(i));
     }

	return 0;
}

// 使用递归求斐波那契数
// f(4) + f(3) ->  f(3) + f(2) -> f(2) + f(1) -> f(2) = 1 f(1) =1
// f(5) = 3 + 2 <- f(4) = 2 + 1   <- f(3) = 2 <- f(2) = 1 f(1) =1
int fbNumber(int n)
{
	if (n == 1 || n == 2)
	{
		return 1;
	}
	return fbNumber(n-1) + fbNumber(n-2);
}


