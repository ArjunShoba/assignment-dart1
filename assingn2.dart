import 'dart:io';

void even(int a, int b) {
  for (int i = a; i <= b; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  print('enter the number');
  int a = int.parse(stdin.readLineSync()!);
  print('enter the next number');
  int b = int.parse(stdin.readLineSync()!);
  even(a, b);
}
