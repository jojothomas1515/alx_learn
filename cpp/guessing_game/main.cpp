#include <iostream>
#include <cstdlib>

using namespace std;

int main(void) {
	int target = rand() % 100;
	cout << "Welcome to the guessing game" << endl;
	cout << "____________________________" << endl;

	while (true)
	{
		cout << "";
		cout << "Guess the number -> " << endl;
		int guess;
		cin >> guess;
//		cout << "\r" << guess << endl;

		if (guess < target)
			cout << "your guess is lower" << endl;
		else if (guess > target)
			cout << "your guess is higher" << endl;
		else {
			cout << "Your won!" << endl;
			break;
		}
	}
	return 0;
}
