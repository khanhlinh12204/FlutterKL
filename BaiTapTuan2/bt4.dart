// ### Bài 4: Tìm lập trình viên kỳ cựu nhất (reduce)

// Cho danh sách số năm kinh nghiệm của một nhóm:

// ```dart
// List<int> experiences = [2, 5, 1, 8, 4, 7];
// ```

// **Yêu cầu:** Sử dụng `.reduce()` để tìm số năm kinh nghiệm lớn nhất trong danh sách trên. Thử viết thêm một hàm khác cũng dùng `.reduce()` nhưng để tìm số năm nhỏ nhất.

// ---
import 'dart:io';
void main(List<String> args){
  List<int> experiences =[2, 5, 1, 8, 4, 7];
  int maxNam=experiences.reduce((a, b) => a > b ? a : b);
  int minNam=experiences.reduce((a, b) => a < b ? a : b);
  print("Số năm kinh nghiệm lớn nhất: $maxNam");
  print("Số năm kinh nghiệm nhỏ nhất: $minNam");
}