// ### Bài 18: Quản lý từ điển (Map)
// Tạo một `Map<String, String>` lưu trữ cặp Từ tiếng Anh - Nghĩa tiếng Việt.
// - Thêm 3 từ mới vào Map.
// - Viết chương trình cho phép người dùng tìm kiếm nghĩa của một từ.
import 'dart:io';
void main(List<String> args) {
  Map<String, String> dictionary = {
    "hello": "xin chào",
    "world": "thế giới",
    "Love": "tình yêu"
  };

  dictionary["SPIT"] = "Hỗ Trợ Lập Trình";
  dictionary["programming"] = "lập trình";
  dictionary["language"] = "ngôn ngữ";

  stdout.write("Nhập một từ tiếng Anh: ");
  String word = stdin.readLineSync()!;
  
  if (dictionary.containsKey(word)) {
    print("Nghĩa của '$word' là: ${dictionary[word]}");
  } else {
    print("Từ '$word' không có trong từ điển.");
  }
}