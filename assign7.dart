import 'dart:io';

void sum(int a, int b) {
  var z = a + b;
  print("sum =$z");
}

void main() {
  stdout.write("enter number 1");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("enter number 2");
  int b = int.parse(stdin.readLineSync()!);
  sum(a, b);
}
