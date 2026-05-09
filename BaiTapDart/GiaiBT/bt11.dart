// ### Bài 11: Tính giai thừa
// Viết chương trình tính giai thừa của một số nguyên dương `n` ($n! = 1*2*3*....*n).
import 'dart:io';

void main(List<String> args) {
  stdout.write("Nhập một số nguyên dương n: ");
  int n = int.parse(stdin.readLineSync()!);
  int GT=1;
  for(int i=1; i<=n; i++){
    GT *= i;
  }
  print("Giai thừa của $n là: $GT");
}