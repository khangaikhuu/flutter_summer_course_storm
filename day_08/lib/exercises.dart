class HumanRace {
  int eyes = 0;
}

class Rectangle {
  int _width = 0;
  int _height = 0;
  // энэ функц хэрвээ шинээр үүсгэсэн instance/object-ийн доторх шинж чанарыг хэлдэг байна.
  void getMeasures(){
    print("i'm a rectange. I have a height of $_height and width of $_width");
  }
  void setWidth(int width) {
    this._width = width;
  }
  void setHeight(int height) {
    this._height = height;
  }
}
void main(){
  final rectangle = Rectangle();
  print(rectangle);
  rectangle.getMeasures();
  rectangle.setWidth(5);
  rectangle.setHeight(10);
  rectangle.getMeasures();
}