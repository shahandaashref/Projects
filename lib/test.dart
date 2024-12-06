import 'dart:io';

import 'dart:math';

void main(){
print('Welcome😍💖💖');
print('Game rules🤩');
print('''1-The user must enter the maximum and minimum values
for the game to choose a random number from among them.
2-The user must enter a correct number.
3-Make sure that you entered a number and not a text value or left it blank.
4-Number of attempts: 7. If they all fail, the program will end🤦.
Let's go!!!!!😻
 ''');
  print("Enter the number of minimum: ");
  int? min=int.tryParse(stdin.readLineSync()!);
  print("Enter the number of maximum: ");
  int? max=int.tryParse(stdin.readLineSync()!);
  if (min == null || max == null || min >= max) {
    print("Invalid range! Please restart the game with valid numbers.");
    return;
  }

  Random rand = new Random();
  int randomValue =min + rand.nextInt((max+1)-min);


 for (int i = 0;i<7; i++) {

  print("Attempt ${i + 1}/7: Enter your guess: ");
  int? userRandomValue=int.tryParse(stdin.readLineSync()!);

  if (userRandomValue == null) {
      print("Invalid input! Please enter a valid number 💖😊.");
      continue;
    }
      if (userRandomValue > randomValue){
    print('Too high!🤦.Try again😊');
  } else if (userRandomValue < randomValue){
      print('Too low!🤦.Try again😊');
  }else{
    print("Congratulations!! You guessed the number $randomValue in ${i + 1} attempts! 💖🎉🎉🎉");
    return;
  }
 }
 print('Sorry😥! You lost Game. The correct number was $randomValue.');
}