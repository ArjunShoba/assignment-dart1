import 'dart:io';

void power(int a, int b) {
  int result = 1;
  for (int i = 0; i < b; i++)
  {
    result *= a;
  }
  
  print('$a^$b=$result');
}

void main() {
  stdout.write("enter the number: ");
  int a= int.parse(stdin.readLineSync()!);
  stdout.write("enter the power: ");
  int b = int.parse(stdin.readLineSync()!);
  power(a, b);
}

