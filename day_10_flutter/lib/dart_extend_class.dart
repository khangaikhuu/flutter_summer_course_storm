// inheritance буюу уламжлал
class Esukhei {
  Esukhei({required int age}) {
    this.age = age;
  }

  String name = 'Esukhei';
  int age = 0;

  void sayMyName() {
    print('My name is ${this.name}');
  }
}

class Temuujin extends Esukhei {
  Temuujin({required super.age});

  @override
  void sayMyName() {
    print('My name is Temuujin');
  }
}

void main(){
  final Esukhei esukheiBaatar = Esukhei(age: 25);
  esukheiBaatar.sayMyName();
  final Temuujin temuujin = Temuujin(age: 18);
  temuujin.sayMyName();
}