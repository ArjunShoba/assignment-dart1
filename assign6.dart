import 'dart:io';

void circ(int r) {
  double area = (3.14 * r * r);
  print(area);
}

void main() {
  print('enter the radi of circle');
  int r = int.parse(stdin.readLineSync()!);
  circ(r);
}
