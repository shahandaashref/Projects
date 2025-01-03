class Animal {
  String name;
  int age;
  Animal(this.name, this.age);
  void setAge(int age) {
    this.age = age;
    if (age <= 0) {
  print('Age must be greater than 0. Setting default age to 1.');
  age = 1;
}
    
    }

  void makeSound() {
    print('makes a sound');
  }

  void animalDetails() {
    print('🐾 $name is $age years old.');
  }
}