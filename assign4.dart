import 'dart:io';

void larg(int a, int b, int c) {
  if (a >= b && a >= c) {
    print("largest is $a");
  } else if (b >= a && b >= c) {
    print("largest is $b");
  } else {
    print("largest is $c");
  }
}

void main() {
  stdout.write("enter num1");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("enter num 2");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("enter num2");
  int c = int.parse(stdin.readLineSync()!);

  larg(a, b, c);
}
