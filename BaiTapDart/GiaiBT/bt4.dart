// ### Bài 4: Kiểm tra số chẵn lẻ
// Viết chương trình kiểm tra một số nguyên `n`. Nếu `n` là số chẵn, in "Số chẵn", ngược lại in "Số lẻ".
import 'dart:io';

void main(List<String> args) {
  stdout.write("Nhập một số nguyên: ");
  int n = int.parse(stdin.readLineSync()!);
  if (n % 2 == 0) {
    print("Số chẵn");
  } else {
    print("Số lẻ");
  }
}