import 'member.dart';
import 'Book.dart';
import 'dart:io';

void UserInterface(){
  print("📚 Enter your Name: ");
  String name = stdin.readLineSync()!;
  print("🔢  Enter Your Ship Number: ");
  int memberShipNumber = int.tryParse(stdin.readLineSync() ?? '')?? 0;
  Member member=Member(name, memberShipNumber);
  String title , author ;
  int? number ;
  print("""\n🔢 Choose an option (1-4):");
    1️⃣ Borrow a Book;
    2️⃣ Return a Book;
    3️⃣ Show Member Info;
    4️⃣ Exit""");
  for (;;){
    print("🔢 Choose a number from 1 to 4 : ");
    number = int.tryParse(stdin.readLineSync() ?? '');
    if (number==1) {
      print("📖 Enter Book Title: ");
      title = stdin.readLineSync()!;
      print("✍️ Enter Book Author: ");
      author = stdin.readLineSync()!;
      Book book=Book(title,author);
      member.borrowBOOk(book);
    }
    else if (number==2) {
      print("📖 Enter Book Title: ");
      title = stdin.readLineSync()!;
      print("✍️ Enter Book Author: ");
      author = stdin.readLineSync()!;
      Book book=Book(title,author);
      member.returnBook(book);
    }
    else if (number==3) {
      member.printMemberInfo();
    }else if (number==4) {
      print("👋 Thank you for using the Library System! 📚 Have a great day!");
      return;
    } else {
      print("❌ Invalid option. Please try again.");
    }
  }


}

void main() {
  print("📚 Welcome to the Library System!");
  UserInterface();
}
