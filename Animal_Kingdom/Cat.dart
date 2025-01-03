import 'Animal.dart';

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('🐱 ' + name);
    super.makeSound();
    print('Meow');
  }
  
}