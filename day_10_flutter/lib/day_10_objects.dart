// class blue print
// class with named constructor
class Sprite {
  // constructor
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }

  int x = 0;
  int y = 0;

  void makeSound(){
    print("Hello I'm a sprite");
  }
}

class NamedSprite {
  NamedSprite({required int x,required int y}) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void printMyLocation(){
    print("My location is ${this.x} and ${this.y}");
  }
}
class Rahm {
  Rahm({required String name}) {
    this.name = name;
  }
  String name = 'Rahm';
}
class Wheel {
  Wheel({required String name, required int numberOfWheels}) {
    this.name = name;
    this.numberOfWheels = numberOfWheels;
  }
  String name = 'Wheel';
  int numberOfWheels = 1;
}
class BiCycle {
  // named constructor with Objects
  BiCycle({required String name, required Rahm ram, required Wheel wheels}) {
    this.name = name;
    this.ram = ram;
    this.wheels = wheels;
  }
  String name = 'Bicycle';
  Rahm ram = Rahm(name: 'Canon Dale');
  Wheel wheels = Wheel(name: 'Montana', numberOfWheels: 4);
}

void main(){
  final Sprite cat = Sprite(4, 5);
  print(cat);
  // make sound гэдэг функцыг cat object-оос дуудаарай
  cat.makeSound();
  final NamedSprite dog = NamedSprite(x: 5, y: 6);
  print(dog);
  dog.printMyLocation();
  final Rahm ram = Rahm(name: 'Montana');
  final Wheel wheel = Wheel(name: 'Wheel', numberOfWheels: 2);
  final BiCycle biCycle = BiCycle(name: 'Dugui', ram: ram, wheels: wheel);
}
