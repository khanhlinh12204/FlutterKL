// ### Bài 9: Tính tổng từ 1 đến N
// Viết chương trình tính tổng các số từ 1 đến một số nguyên `N` cho trước.
import 'dart:io';
void main(List<String> args) {
  stdout.write("Nhập một số nguyên N: ");
  int N = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= N; i++) {
    sum += i;
  }
  print("Tổng các số từ 1 đến $N là: $sum");
}