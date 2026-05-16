// ### Bài 13: Xử lý danh sách đối tượng lồng nhau (List of Objects)

// Cho dữ liệu đơn hàng chứa danh sách các sản phẩm:

// ```json
// {
//   "order_id": "DH_2026",
//   "items": [
//     {"id": "P01", "name": "Chuột không dây", "price": 350000, "isAvailable": true},
//     {"id": "P02", "name": "Lót chuột cỡ lớn", "price": 120000, "isAvailable": true}
//   ]
// }
// ```

// **Yêu cầu:**

// - Sử dụng lại class `Product` ở Bài 11.
// - Tạo class `Order` gồm các thuộc tính `orderId` (String) và `items` (`List<Product>`).
// - Thiết kế phương thức `fromMap` và `toMap` cho `Order` sao cho nó xử lý mượt mà việc chuyển đổi danh sách `items` từ `List<Map>` thành `List<Product>` và ngược lại.

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
}
class Order{
  String orderId;
  List<Product> items;
  Order(this.orderId, this.items);
  Map<String, dynamic> toMap(){
    return {
      "order_id": orderId,
      "items": items.map((item) => item.toMap()).toList()
    };
  }
  factory Order.fromMap(Map<String, dynamic> map){
    return Order(
      map["order_id"],
      (map["items"] as List).map((item) => Product.fromMap(item)).toList()
    );

  }

}
void main(List<String> args){
  String jsonData = '''
  {
    "order_id": "DH_2026",
    "items": [
      {"id": "P01", "name": "Chuột không dây", "price": 350000.0, "isAvailable": true},
      {"id": "P02", "name": "Lót chuột cỡ lớn", "price": 120000.0, "isAvailable": true}
    ]
  }
  ''';
  Map<String, dynamic> data = jsonDecode(jsonData);
  Order order = Order.fromMap(data);
  print("Order ID: ${order.orderId}");
  for (var item in order.items) {
    print("Product ID: ${item.id}, Name: ${item.name}, Price: ${item.price}, Available: ${item.isAvailable}");
  }
}

