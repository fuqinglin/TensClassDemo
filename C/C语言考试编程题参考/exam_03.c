#include <stdio.h>
int main(int argc, char const *argv[])
{
	/*3、一个数恰好等于它的平方数的右端，这个数称为同构数。如5的平方等于25，则5就称为同构数。 
	     求1~1000内所有的同构数。*/

	printf("1~1000同构数：\n");
	for (int i = 1; i <= 1000; ++i)
	{
		if (i <= 10 && i == i * i % 10)
		{
			printf("%d ",i);
		} 
		else if(i > 10 && i <= 100 && i == i * i % 100)
		{
			printf("%d ", i);
		}
		else if(i > 100 && i <= 1000 && i == i * i % 1000)
		{
			printf("%d ", i);
		}
	}
	return 0;
}