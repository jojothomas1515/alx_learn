package main;
import java.util.Scanner;
import java.util.Random;



class GuessingGame {
	public static void print(String info) {
		System.out.println(info);
	}

	public static void main(String[] args) {
		print("Welcome to the quessing game!");
		print("_____________________________");

		Random rand = new Random();
		int target = rand.nextInt(100);

		while (true) {
			try {
				Scanner input = new Scanner(System.in);
				print("Enter your guess --- >>> ");
				int guess = input.nextInt();
				print("your guess is " + guess);

				if (guess == target) {
					print("you won!");
					break;
				} else if (guess < target)
				{
					print("your guess is lower than the answer");
				} else {
					print("your guess is higher than the answer");
				}
			} catch (Exception e) {
				throw e;
			}
		}
	}
}
