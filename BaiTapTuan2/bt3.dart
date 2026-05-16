// ### Bài 3: Tính tổng giá trị giỏ hàng (fold)

// Cho danh sách sản phẩm dưới dạng Map:

// ```dart
// List<Map<String, dynamic>> cart = [
//   {"name": "Chuột Logitech", "price": 450000, "quantity": 2},
//   {"name": "Bàn phím cơ", "price": 1200000, "quantity": 1},
//   {"name": "Lót chuột", "price": 80000, "quantity": 3},
// ];
// ```

// **Yêu cầu:** Sử dụng phương thức `.fold()` để tính tổng số tiền cần thanh toán của toàn bộ giỏ hàng (Tổng tiền = Giá × Số lượng của từng sản phẩm). Không sử dụng vòng lặp `for` hay `forEach`.

// ---
import 'dart:io';
void main(List<String>args){
  List<Map<String, dynamic>> cart = [
    {"name": "Chuột Logitech", "price": 450000, "quantity": 2},
    {"name": "Bàn phím cơ", "price": 1200000, "quantity": 1},
    {"name": "Lót chuột", "price": 80000, "quantity": 3},
  ];
  double total = cart.fold(0, (sum, item) => sum + item["price"] * item["quantity"]);
  print("Tổng số tiền cần thanh toán: $total");
}