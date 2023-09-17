#include <stdio.h>

int add(int, int);
void func1(int (int, int));

int main() {
	printf("just running an app\n");
	func1(add);
	return (0);
}

int add(int a, int b) {
	return (a + b);
}

void func1(int (fun)(int, int))
{
	int ans = fun(33, 22);
	printf("The ans is %d\n", ans);
}
