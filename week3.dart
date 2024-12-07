/*      
1. Grocery List Manager
Assignment Title:
Implement a Grocery List Manager Using Lists and Functions
Objective:
Create a Dart program that allows users to manage a grocery list.
They should be able to add items, remove items, view the entire list, and search for specific items.

*/
import 'dart:io';
void main(){
    print('''
Welcome to the Grocery List Manager! 🛒
Please choose an option from the menu below:

1️⃣ Add an item.
2️⃣ Remove an item.
3️⃣ View the entire list.
4️⃣ Search for an item.
5️⃣ Exit the program.

''' );
List<String> list = []; 

for (; ;) {
  print(""" 👉 Enter the number of your choice:""");
  int? userChoice=int.tryParse(stdin.readLineSync()?? '');
  if (userChoice==1) {
    print(" Please enter the item you want to add to the list: ");
    String newItem= stdin.readLineSync()! ;
    addItem( list,  newItem);
  }else if(userChoice==2) {
    print(" Please enter the item you want to remove from to the list: ");
    String newItem= stdin.readLineSync()! ;
    removeItem ( list,  newItem);
  }else if(userChoice==3) {
    print(''' 
    If you want to change the format of the text:
    1️⃣ To uppercase.
    2️⃣ To lowercase.
    3️⃣ As default.
      👉 Enter the number of your choice:
    ''');
    int? userChoice=int.tryParse(stdin.readLineSync()?? '');
    displayItem(list, userChoice);
  }else if(userChoice==4) {
    print(" Please enter the item you want to search on the list: ");
    String item= stdin.readLineSync()! ;
    print(search( list,  item));

  }else if(userChoice==5) {
    print(""" Thank you for using the Grocery List Manager! 💖 See you next time!""");
    return ;
  }else{
    print (" Invalid choice. Please select a number from 1 to 5. 🚫"); 
  }
}
}
bool addItem(List<String> list, String newItem){
    if (newItem.isEmpty) {
    print("You can't add an empty item. 🚫Please try again.");
    return false;
  }
    if(list.contains(newItem)){
        print("this item is already in the list. 🔁Try adding something else.");
        return false;
    }
    list.add(newItem);
    print("Item '$newItem' added successfully. ✅");
    return true;
}
bool removeItem(List<String> list, String newItem){
   if (newItem.isEmpty) {
    print("You can't remove an empty item. 🚫Please try again.");
    return false;
  }
    if(!(list.contains(newItem))){
        print("This item is not in the list. ❌Try removing another item. ");
        return false;
    }
    list.remove(newItem);
    print("Item '$newItem deleted successfully. ✅");
    return true;
}

int? search(List<String> list, String item){
  int index = list.indexOf(item);
  if (index == -1) {
    print("This item isn't in the list. ❌");
    return null;
  }
  print("The item '$item' is at position: ${index + 1}. ✅");
  return index + 1;
}

void displayItem(List<String> list,[int? textFormat] ){
    if(list.isEmpty){
      print("The list is empty.");
      return ;
    }
    // For the user to choose the text format
      print("The list contains : ");
      list.forEach((listItem){
      switch (textFormat) {
        case 1:
          print("${listItem.toUpperCase()}  ");
          break;
        case 2:
          print("${listItem.toLowerCase()}  ");
          break;
        default:
          print("$listItem  ");
    }
    });
}






