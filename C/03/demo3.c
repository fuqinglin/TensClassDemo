#include <stdio.h>
int main(int argc, char const *argv[])
{
	//------------------二维数组-----------------------
	// 二维数组的定义
	int aa[3][2] = {{1,2},{3,4},{5,6}};

	int aa1[3][2] = {1,2,3,4,5,6};

	int aa2[][2] = {1,2,3,4,5,6}; // 真确
	// int aa3[3][] = {1,2,3,4,5,6}; 错误：这样定义不能确定小数组元素的个数
	// int aa4[][] = {1,2,3,4,5,6}; 错误

	// 二维数组的操作
	int var = aa[2][0]; // 根据下表取值

	aa[1][1] = 100; // 给对应坐标位置赋值
	printf("aa[1][1] = %d\n",aa[1][1]);
	// int b[2] = aa[1]; 错误：

	// 二维数组的遍历
	int aa4[][2] = {1,2,3,4,5,6,6,54,545};
	int count = sizeof(aa4) / (sizeof(int) * 2);

	for (int i = 0; i < count ; ++i)
	{
		for (int j = 0; j < 2 ; ++j)
		{
			printf("aa4[%d][%d] = %d\n",i,j,aa4[i][j]);
		}
	}

	return 0;
}