
// ### Bài 2: Đánh dấu vị trí phần tử dài (indexed / asMap)

// Cho danh sách tên thành viên:

// ```dart
// List<String> members = ["An", "Thái", "Bảo", "Phương", "Vy"];
// ```

// **Yêu cầu:** Sử dụng thuộc tính `.indexed` (của Dart 3) hoặc `.asMap()`. Hãy lọc ra những thành viên có tên dài hơn 3 ký tự, sau đó in ra danh sách chuỗi hiển thị vị trí ban đầu của họ.

// **Đầu ra mong muốn:** `["Vị trí 1: Thái", "Vị trí 3: Phương"]` (Giữ nguyên index gốc của họ trong mảng ban đầu).

// ---
import 'dart:io';
void main(List<String> args){
  List<String> members = ["An", "Thái", "Bảo", "Phương", "Vy"];
  List<String> KQ = members.asMap().entries.where((entry) => entry.value.length > 3).map((entry) => "Vị trí ${entry.key}: ${entry.value}").toList();
  print(KQ);
}