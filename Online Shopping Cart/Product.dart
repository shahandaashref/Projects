class Product {
  String _productName;
  double _productPrice;
  int _productStock;
  List<String> productList=[];
  
  Product(this._productName, this._productPrice, this._productStock);
  //=========Getters and setters=============//
  String getProductName() => _productName;
  double getProductPrice() => _productPrice;
  int getProductStock() => _productStock;

   void setProductPrice(double price) {
    if (price > 0) {
      _productPrice = price;
      print("✅ Product price updated successfully!");
    } else {
      print("❌ Please enter a positive price!");
    }
  }
  void setProductStock(int stock) {
    if (stock > 0) {
      _productStock = stock;
      print("✅ Product stock updated successfully!");
    } else {
      print("❌ Please enter a positive stock!");
    }
  }

  //=========Mesodes==============//

  void sellProduct(int stock) {
    if (stock <= _productStock) {
      _productStock -= stock;
      print("✅ You successfully bought $stock unit(s).");
    } else {
      print("❌ Insufficient stock! Available stock: ${getProductStock()}.");
    }
  }

  void restock(int stock) {
    if (stock > 0) {
      _productStock += stock;
      print("✅ Stock restocked successfully!");
    } else {
      print("❌ Please enter a positive number!");
    }
  }

  void discount(double discount) {
    if (discount > 0 && discount <= 100) {
      _productPrice *= (1 - (discount / 100));
      print("✅ Discount applied successfully!");
    } else {
      print("❌ Please enter a valid discount percentage (0-100)!");
    }
  }
  void addProduct(String product) {
    if (!productList.contains(product)) {
      productList.add(product);
      print("✅ Product added successfully!");
    } else {
      print("❌ This product is already in the list.");
    }
  }
  void removeProduct(String product) {
    if (productList.contains(product)) {
      productList.remove(product);
      print("✅ Product removed successfully!");
    } else {
      print("❌ This product is not in the list.");
    }
  }



void printProductDetails() {
    print("""
📦 Product Details:
    Product Name: ${getProductName()}
    Product Price: ${getProductPrice()}
    Product Stock: ${getProductStock()}
    Product List: $productList
""");
  }
}