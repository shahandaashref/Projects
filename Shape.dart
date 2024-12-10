import 'dart:io';

void main(){
print("📐 Welcome to Shape Calculator!\n");

Shape shape1 = createShape();
Shape shape2= createShape();
Shape shape3 = createShape();

print("\n🎉 All shapes calculated successfully!");
}

Shape createShape() {
  print("📏Enter height: ");
  double height = double.tryParse(stdin.readLineSync() ?? '') ?? 0;;
  
  print("📏Enter width: ");
  double width = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  Shape shape = Shape(height, width);
  shape.printInfo();
  return shape;
}

class Shape {
double height;
double width;
Shape(this.height, this.width);
double areaOfShape (){
  double area=height*width;
  return area;
}
double perimeterOfShape (){
  double perimeter=(height + width)*2;
  return perimeter;
}
  void printInfo() {
    print('''
    📊 Shape Details:
    ➡️ Height: $height
    ➡️ Width: $width
    🧮 Area of shape: ${areaOfShape()} 🟩
    ➕ Perimeter of shape: ${perimeterOfShape()} 🔲
    -----------------------------
    ''');
  }
}