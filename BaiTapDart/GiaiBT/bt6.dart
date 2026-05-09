// ### Bài 6: Kiểm tra năm nhuận
// Một năm được coi là năm nhuận nếu nó chia hết cho 4 nhưng không chia hết cho 100, HOẶC chia hết cho 400. Viết chương trình kiểm tra một năm `year` bất kỳ.
import 'dart:io';

void main(List<String> args) {
  stdout.write("Nhập một năm: ");
  int year = int.parse(stdin.readLineSync()!);
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year là năm nhuận.");
  } else {
    print("$year không phải là năm nhuận.");
  }
}