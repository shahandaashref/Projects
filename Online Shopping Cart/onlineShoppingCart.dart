

import 'dart:io';

import 'product.dart';

void main(){
userInterface();
}

void userInterface(){
  print("📋 Enter product details:");
  stdout.write("Product name: ");
  String productName = stdin.readLineSync() ?? "Unnamed";
  stdout.write("Product price: ");
  double price = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write("Product stock: ");
  int stock = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  Product product = new Product(productName,price,stock);
int? choice;
  print("""\n🔢 Choose an option (1-6):");
    1️⃣  Print Product Details
    2️⃣  Sell Product
    3️⃣  Restock
    4️⃣  Price
    5️⃣  Discount
    6️⃣ Exit""");

    for (;;){
    print("🔢 Choose a number from 1 to 6 : ");
    choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        product.printProductDetails();
        break;
      case 2:
        stdout.write("Enter quantity to sell: ");
        int sellStock = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        product.sellProduct(sellStock);
        break;
      case 3:
        stdout.write("Enter quantity to restock: ");
        int restockStock = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        product.restock(restockStock);
        break;
      case 4:
        stdout.write("Enter new price: ");
        double newPrice = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        product.setProductPrice(newPrice);
        break;
      case 5:
        stdout.write("Enter discount percentage: ");
        double discount = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        product.discount(discount);
        break;
      case 6:
        print("👋 Thank you for using the Online Shopping cart! 📚 Have a great day!");
        return;
      default:
        print("❌ Invalid choice. Please try again.");
    }
  }

}

//print("👋 Thank you for using the Online Shopping cart! 📚 Have a great day!");

