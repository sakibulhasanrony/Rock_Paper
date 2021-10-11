import 'dart:io'; // dart import for input output

import 'dart:math'; // import math package for generating random numbers.

enum Move { rock, paper, scissors } // enum declaration.
void main() {
  final rnd = Random(); // Random number declaration
  
  print("-------------------------------------------------------");
  print("---------------- Wellcome To The Game -----------------");
  print("-------------------------------------------------------");
  print("_____________________");
  print("To Play The Game.   |");
  print("Type,               |");
  print("--------------------|");

  while (true) {
    // for continuous loop

    stdout.write("Rock, Paper , Scissors? or Quit Game? (r/p/s/q): "); // for printing the line
    final input = stdin.readLineSync(); // user input.

    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      /* Condition check 
      for selecting r, p, s*/

      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final random = rnd.nextInt(3); // random number length.
      final aiMove = Move.values[random]; // assigning random numbers in AI.
      
      print("-------------------------------------------------------");
      print('You played: $playerMove');
      print('AI played: $aiMove');
      print("-------------------------------------------------------");

      if (playerMove == aiMove) {
        print("It's a draw. ( ͡❛ . ͡❛) ");
        print("---------------------");
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print("You Win! ( ͡❛ ‿ ͡❛) 🍾🍾");
        print("-----------------------");
      } else {
        print("You Lose.   ( ͡❛ ︵ ͡❛) ");
        print("---------------------");
      }

      print('Selected: $input');
    } else if (input == 'q') {
      print("-------------------------------------------------------");
      print("Quiting.  ⌛⌛⌛   ");
      print("-------------------------------------------------------");
      break;
    } else {
      print("-------------------------------------------------------");
      print('Invalid Input. ⚠ ⚠');
      print("-------------------------------------------------------");
    }
  }
}