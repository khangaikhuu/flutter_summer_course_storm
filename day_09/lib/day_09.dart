class Sprite {
  Sprite(String name){
    this.name = name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isShow = true;
  int size = 100;
  int direction = 90;
  void move(int x){
    this.x = x;
  }
  String say(){
    return this.name;
  }
}

void main() {
  final Luca = Sprite('Luca'); // constructor буюу constructor wihtout parameter
  final Hat = Sprite('Hat');
  final Kia = Sprite('Kia');
  print(Luca.say());
  print(Hat.say());
  print(Kia.say());
}
