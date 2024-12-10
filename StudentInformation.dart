import 'dart:developer';
import 'dart:io';

void main(){
print("👩‍🎓 Welcome to the Student Information System! 🎓\n");
///////////////////////////Student1
Student student1 = createStudent();
  student1.printInfo();

///////////////////////////Student2
Student student2 = createStudent();
  student2.printInfo();

///////////////////////////Student3 
Student student3 = createStudent();
  student3.printInfo();

print("\n🎉 All student data processed successfully!");
}

Student createStudent() {
  print("📚 Enter your Name: ");
  String name = stdin.readLineSync()!;
  
  print("$name, 🧑‍🏫 Enter your Age: ");
  int? age = int.tryParse(stdin.readLineSync() ?? '');

  print("$name, 🏅 Enter your Grade: ");
  double grade = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  Student student = Student(name, age);
  student.updateGrade(grade);
  return student;
}

class Student{

  String? name;
  int? age;
  String? grade;

  Student ( String? name,int? age,{String grade="A"}){
    this.name=name;
    this.age=age;
    this.grade=grade;
  }
  void updateGrade(double newGrade){
    if (newGrade >= 85) {
      grade = 'A';
    } else if (newGrade >= 75) {
      grade = 'B';
    } else if (newGrade >= 65) {
      grade = 'C';
    } else if (newGrade >= 50) {
      grade = 'D';
    } else if (newGrade >= 0 && newGrade < 50) {
      grade = 'F';
    } else {
      print("Invalid Grade. Please select a grade from 0 to 100. 🚫");
    }        
}
void printInfo(){
   print('''
    🧑‍🎓 Student Details:
    ➡️ Name: $name
    ➡️ Age: ${age ?? 'Not provided'} 🎂
    ➡️ Grade: $grade 🏅
    -----------------------------
    ''');
  }
}

