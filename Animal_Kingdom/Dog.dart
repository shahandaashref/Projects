import 'Animal.dart';

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('🐶 ' + name);
    super.makeSound();
    print('Woof!');
  }

}