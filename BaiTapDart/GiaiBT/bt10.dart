// ### Bài 10: Bảng cửu chương
// In ra bảng cửu chương của một số `n` bất kỳ (từ 1 đến 10).
// *Ví dụ: 5 x 1 = 5, 5 x 2 = 10...*
import 'dart:io';
main(List<String>args){
  stdout.write("Nhập số n:");
  int n = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= 10; i++){
    print("$n x $i = ${n * i}");
  }
}