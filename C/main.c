#include <stdio.h>

int add(int a, int b) { return a + b; }

int (* get_add_func(int num))(int, int) {
	if (num > 10)
		return NULL;
	return &add;
}

int main(void)  {
	int (*adder)(int, int) = add;
	printf("1+2 = %d",get_add_func(2)(2, 3));
	printf("1+2 = %d",adder(2, 3));
}
