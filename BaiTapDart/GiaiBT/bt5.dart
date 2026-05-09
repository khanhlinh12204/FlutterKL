// ### Bài 5: Tìm số lớn nhất
// Cho ba số nguyên `x, y, z`. Hãy tìm và in ra số lớn nhất trong 3 số đó bằng cách sử dụng `if...else`.
import 'dart:io';

void main(List<String> args) {
  stdout.write("Nhập số x: ");
  int x = int.parse(stdin.readLineSync()!);
  stdout.write("Nhập số y: ");
  int y = int.parse(stdin.readLineSync()!);
  stdout.write("Nhập số z: ");
  int z = int.parse(stdin.readLineSync()!);

  if (x >= y && x >= z) {
    print("Số lớn nhất là: $x");
  } else if (y >= x && y >= z) {
    print("Số lớn nhất là: $y");
  } else {
    print("Số lớn nhất là: $z");
  }
}