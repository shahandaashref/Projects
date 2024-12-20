import 'Product.dart';

class Cart {
List<Product> productlist=[];
  void addProduct(Product product){
    if (!productlist.contains(product)) {
      productlist.add(product);
    }else print("There is already a product. ");

    }
  void removeProduct(String product){
    if (productlist.contains(product)) {
      productlist.remove(product);
    }else print("There is not already a product. ");

    }

}