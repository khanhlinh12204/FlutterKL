// ### Bài 1: Bộ lọc và biến đổi số (where, map)

// Cho danh sách số nguyên:

// ```dart
// List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// ```

// **Yêu cầu:**

// - Lọc ra các số chẵn trong danh sách.
// - Nhân đôi các số chẵn đó lên.
// - Chuyển đổi danh sách kết quả thành một `List<String>` với định dạng: `"Số chẵn sau nhân đôi: X"`.

// **Đầu ra mong muốn:** `["Số chẵn sau nhân đôi: 4", "Số chẵn sau nhân đôi: 8", ...]`

// ---

import 'dart:io';
void main(List<String> args){
  List<int>numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> KQ =numbers.where((number) => number % 2 == 0).map((number) => "Số chẵn sau nhân đôi: ${number * 2}").toList();
  print(KQ);
}