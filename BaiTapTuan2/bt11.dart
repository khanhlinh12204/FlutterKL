// ## Phần 3: Chuyển đổi dữ liệu (fromMap, toMap, fromJson, toJson)

// ### Bài 11: Mô hình hóa sản phẩm cơ bản

// **Yêu cầu:** Thiết kế class `Product` gồm các thuộc tính: `id` (String), `name` (String), `price` (double), `isAvailable` (bool).

// - Viết đầy đủ: Constructor, `fromMap`, `toMap`, `fromJson`, và `toJson` cho class này.
// - Viết hàm `main()` tạo thử một đối tượng `Product`, chuyển nó thành JSON String rồi khôi phục ngược lại để kiểm tra.

// ---
import 'dart:io';
import 'dart:convert';
class Product{
  String id;
  String name;
  double price;
  bool isAvailable;
  Product(this.id, this.name, this.price, this.isAvailable);
  Map<String, dynamic> toMap(){
    return {
      "id": id,
      "name": name,
      "price": price,
      "isAvailable": isAvailable
    };
  }
  factory Product.fromMap(Map<String, dynamic> map){
    return Product(
      map["id"],
      map["name"],
      map["price"],
      map["isAvailable"]
    );
  }
  String toJson(){
    return jsonEncode(toMap());
  }
  factory Product.fromJson(String jsonString){
    return Product.fromMap(jsonDecode(jsonString));
  }

}
void main(List<String> args){
  Product product = Product("P002", "Laptop", 15000000, true);
  String jsonString = product.toJson();
  print("JSON String: $jsonString");
  Product restoredProduct = Product.fromJson(jsonString);
  print("Restored Product: id=${restoredProduct.id}, name=${restoredProduct.name}, price=${restoredProduct.price}, isAvailable=${restoredProduct.isAvailable}");
}
