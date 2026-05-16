// ### Bài 5: Chuẩn hóa dữ liệu danh mục (where, map, toSet)

// Cho danh sách danh mục sản phẩm từ cơ sở dữ liệu có chứa khoảng trắng thừa và bị lặp lại:

// ```dart
// List<String> rawCategories = [
//   "  Điện thoại ", " Laptop", "điện thoại",
//   "Đồ gia dụng", "LAPTOP  ", " Đồ gia dụng "
// ];
// ```

// **Yêu cầu:**

// - Loại bỏ khoảng trắng ở hai đầu của từng chuỗi (`.trim()`).
// - Chuyển tất cả về chữ viết thường (`.toLowerCase()`).
// - Loại bỏ hoàn toàn các danh mục bị trùng lặp để thu được một danh sách các danh mục duy nhất. *(Gợi ý: dùng `.toSet()`)*

// ---
import 'dart:io';
void main(List<String> args){
  List<String> rawCategories = [
    "  Điện thoại ", " Laptop", "điện thoại",
    "Đồ gia dụng", "LAPTOP  ", " Đồ gia dụng "
  ];
  Set<String> ChuanHoa = rawCategories.map((category) => category.trim().toLowerCase()).toSet();
  print(ChuanHoa);
}