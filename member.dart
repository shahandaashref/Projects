import 'Book.dart';
class Member {
String name;
int memberShipNumber;
List<Book> borrowdBooks=[];
Member(this.name, this.memberShipNumber);

void borrowBOOk(Book book ){
   if (borrowdBooks.contains(book)) {
      print("📖⚠️ This book is already borrowed. Please choose another book.");
    } else {
      borrowdBooks.add(book);
      print("📚✅ Book added successfully!");
    }
}
void returnBook(Book book ){
 if (borrowdBooks.contains(book)) {
      borrowdBooks.remove(book);
      print("📚✅ Book returned successfully!");
    } else {
      print("📖⚠️ This book was not borrowed. Please check the details.");
    }
}

void printMemberInfo(){
    print('''
      🧑 Member Details:
    ➡️ Name: $name
    ➡️ Member Ship Number: ${ memberShipNumber }
    ➡️ Borrod Book: 
    -----------------------------
    ''');
    if (borrowdBooks.length>0){
      for (var i = 0; i < borrowdBooks.length; i++) {
        print("""📚 Title: ${borrowdBooks[i].title} | Author: ${borrowdBooks[i].author}""");
    }
    }else {
      print("❌ No borrowed books found.");
    }
    

}


}