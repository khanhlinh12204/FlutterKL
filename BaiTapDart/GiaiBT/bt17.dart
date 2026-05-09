// ### Bài 17: Lọc phần tử
// Từ một danh sách số nguyên cho trước, hãy tạo ra một danh sách mới chỉ bao gồm các số chia hết cho 3.
import 'dart:io';

void main(List<String> args) {
 List<int> n=stdin.readLineSync()!.split(" ").map(int.parse).toList();
  List<int> divisibleBy3 = [];
  
  for (int i in n) {
    if (i % 3 == 0) {
      divisibleBy3.add(i);
    }
  }
  
  print("Các số chia hết cho 3: $divisibleBy3");
}