import 'dart:io';

void reverse(String name) {
  String reverse = name.split('').reversed.join();
  print(reverse);
}

void main() {
  stdout.write("enter the string");
  String name = stdin.readLineSync()!;
  reverse(name);
}
