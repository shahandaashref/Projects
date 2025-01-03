import 'Cat.dart';
import 'Dog.dart';
import 'dart:io';

void main() {
  print('🦁 Welcome to the Animal Kingdom! 🐾');
  print("🐶 Dogs and 🐱 Cats are the most popular animals in the kingdom.");
  print(" 🐶Enter the Dog name: ");
  String name = stdin.readLineSync() ?? ' ' ;
  print(" 🐶Enter the Dog age: ");
  int age = int.tryParse(stdin.readLineSync()?? "") ?? 0;
  if (age <= 0) {
    print('Age must be greater than 0. Setting default age to 1.');
    age = 1;
  }
  // Create a Dog object
  Dog dog = Dog(name, age);
  dog.makeSound();
  dog.animalDetails();

  print(" 🐱Enter the Cat name: ");
  name = stdin.readLineSync() ?? ' ' ;
  print(" 🐱Enter the Cat age: ");
  age = int.tryParse(stdin.readLineSync()?? "") ?? 0;
   if (age <= 0) {
    print('Age must be greater than 0. Setting default age to 1.');
    age = 1;
  }
  // Create a Cat object
  Cat cat = Cat(name, age);
  cat.makeSound();
  cat.animalDetails();
}