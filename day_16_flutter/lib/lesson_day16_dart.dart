// ternary operator
void main() {
  int age = 16;
  if (age > 13 && age < 23) {
    print("Yes I'm a teenager");
  } else {
    print("No I'm not a teenager");
  }

  // ternary operator simple condition checker
  age > 13 && age < 23
      ? print("Yes I'm a teenager")
      : print("No I'm not a teenager");
}
