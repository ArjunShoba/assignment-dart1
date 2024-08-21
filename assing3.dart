import 'dart:io';

void greet(String name) {
  print("hello $name");
}

void main() {
  print('enter your name');
  String name = stdin.readLineSync()!;
  greet(name);
}
