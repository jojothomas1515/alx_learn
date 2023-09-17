#include <stdio.h>
int loop_it();
int main(void) {
	loop_it();
	return 0;
}

int loop_it() {
	int i = 0;
	int res = 0;
	for (i = 0; i < 10; i++) {
		res += i;
	}
	return res;
}
