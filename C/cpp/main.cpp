#include <iostream>

using namespace std;

namespace jojo {
	void hey() {
		cout << "hey jojothomas how are you";
	}
}
int is_on(int num)
{
	if (num == 1)
		return 1;
	else
		return 0;
}

int main(void)
{
	cout << is_on(1) << endl;
	jojo::hey();
	return (0);
}
