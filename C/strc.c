#include <stdio.h>

struct num {
	int n;
};

int main(void)
{
	struct num num1;
	num1.n = 2;
	printf("size is %lu\n", sizeof(num1.n));
}
