// ### Bài 10: Giới hạn thời gian kết nối (Future Timeout)

// **Yêu cầu:**

// - Viết một hàm `Future<String> downloadHeavyFile()` giả lập việc tải file nặng mất 4 giây để hoàn thành.
// - Trong hàm `main()`, gọi hàm tải file này nhưng áp dụng phương thức `.timeout()` giới hạn thời gian chờ chỉ trong 2 giây.
// - Hãy bắt lỗi `TimeoutException` để in ra dòng chữ `"Tải file thất bại do kết nối quá hạn!"` thay vì để chương trình bị crash.

// ---
import 'dart:io';
import 'dart:async';
void main(List<String>args)async{
  try{
    String result = await downloadHeavyFile().timeout(Duration(seconds:2));
    print(result);
  } catch (e) {
    if (e is TimeoutException) {
      print("Tải file thất bại do kết nối quá hạn!");
    } else {
      rethrow;
    }
  }
}
Future<String>downloadHeavyFile() async {
  await Future.delayed(Duration(seconds:4));
  return "File nặng đã được tải thành công!";
}