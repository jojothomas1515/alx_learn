#include <stdio.h>
#include <math.h>

int pow2(int v, int pow)
{
	int res = v;
	int i;
	
	for (i = 0; i < pow-1; i++)
	{
		res *= v;
	}
	return (res);
}
int main(void)
{
	{
		int num2 = 20;
		
		printf("block num is %d\n", num2);
		printf("hello jojo\n");
	}
	printf("block num is %d\n", num2);
	printf("Number is %f\n", pow(2.0, 17.0));
	printf("Number is %d\n", pow2(2, 17));


	return (0);
}
