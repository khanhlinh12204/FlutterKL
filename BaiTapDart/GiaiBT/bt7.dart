// ### Bài 7: Phân loại điểm số (Switch Case)
// Viết chương trình nhận vào một ký tự điểm `grade` (A, B, C, D, F) và in ra đánh giá tương ứng:
// - 'A': Xuất sắc
// - 'B': Giỏi
// - 'C': Khá
// - 'D': Trung bình
// - 'F': Yếu
// - Khác: Không xác định
import 'dart:io';

void main(List<String> args) {
  stdout.write("Nhập (A, B, C, D, F): ");
  String grade = stdin.readLineSync()!.toUpperCase();

  switch (grade) {
    case 'A':
      print("Đánh giá: Xuất sắc");
      break;
    case 'B':
      print("Đánh giá: Giỏi");
      break;
    case 'C':
      print("Đánh giá: Khá");
      break;
    case 'D':
      print("Đánh giá: Trung bình");
      break;
    case 'F':
      print("Đánh giá: Yếu");
      break;
    default:
      print("Đánh giá: Không xác định");
  }
}