// ### Bài 13: Kiểm tra số nguyên tố
// Viết hàm `bool isPrime(int n)` trả về `true` nếu `n` là số nguyên tố, ngược lại trả về `false`.
import 'dart:io';
bool SoNguyenTo(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
void main(List<String> args) {
  stdout.write("Nhập một số nguyên: ");
  int n= int.parse(stdin.readLineSync()!);
  if(SoNguyenTo(n)){
    print("$n là số nguyên tố.");
  } else {
    print("$n không phải là số nguyên tố.");
  }
}