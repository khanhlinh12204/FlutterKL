// ### Bài 6: Gọi API tỷ giá và xử lý lỗi (Future & Try-Catch)

// **Yêu cầu:** Viết một hàm `Future<double> fetchExchangeRate(String currency)` nhận vào mã tiền tệ (ví dụ: `"USD"`, `"VND"`).

// - Hàm sẽ giả lập trì hoãn 1.5 giây bằng `Future.delayed`.
// - Nếu mã truyền vào là `"USD"`, trả về giá trị `25400.0`.
// - Nếu mã truyền vào là `"VND"`, hãy dùng `throw Exception("Không cần quy đổi tiền Việt!")`.
// - Trong hàm `main()`, hãy gọi thử hàm này với cả hai trường hợp `"USD"` và `"VND"`, sử dụng `try-catch` để bắt lỗi và in ra thông báo lỗi đẹp mắt nếu có.

// ---
import 'dart:io';
void main(List<String> args) async {
  print("Nhập mã tiền tệ (USD hoặc VND):");
  String? currency = stdin.readLineSync();
  if(currency != null){
      try{
      double rate = await fetchExchangeRate(currency);
      print("Tỷ giá $currency: $rate VND");
    } catch(e){
      print("Lỗi khi lấy tỷ giá $currency: $e");
    }
    }
}
Future<double> fetchExchangeRate(String currency) async {
  await Future.delayed(Duration(seconds:1, milliseconds: 500));

  if(currency== "USD"){
    return 25400.0;
    } else if(currency == "VND"){
      throw Exception("Không cần quy đổi tiền Việt!");
    } else {
      throw Exception("Mã tiền tệ không hợp lệ!");
    }
}