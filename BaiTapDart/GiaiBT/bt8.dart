// ### Bài 8: In dãy số
// Sử dụng vòng lặp `for` để in các số từ 1 đến 20 trên cùng một dòng.
import 'dart:io';

void main(List<String> args) {
  for (int i = 1; i <= 20; i++) {
    stdout.write("$i ");
  }
}