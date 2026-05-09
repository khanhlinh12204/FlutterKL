// ### Bài 3: Tính toán cơ bản
// Nhập (hoặc khai báo cứng) hai số thực `a` và `b`. Tính và in ra:
// - Tổng `a + b`
// - Hiệu `a - b`
// - Tích `a * b`
// - Thương `a / b`
// - Thương nguyên `a ~/ b`
import 'dart:io';

void main(List<String> args) {
 
  double a = 10.5;
  double b = 2.5;
  stdout.write("Nhập số c: ");
  double c = double.parse(stdin.readLineSync()!);
  stdout.write("Nhập số d: ");
  double d = double.parse(stdin.readLineSync()!);


  double tong = a + b;
  double hieu = a - b;
  double tich = a * b;
  double thuong = a / b;
  int thuongNguyen = a ~/ b;


  print("Tổng: $tong");
  print("Hiệu: $hieu");
  print("Tích: $tich");
  print("Thương: $thuong");
  print("Thương nguyên: $thuongNguyen");
  print("Hiệu của c vàd: ${c - d}");
  print("Tích của c và d: ${c * d}");
  print("Thương của c và d: ${c / d}");
  print("Thương nguyên của c và d: ${c ~/ d}");
  
}