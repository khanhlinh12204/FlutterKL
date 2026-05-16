// ### Bài 7: Đồng bộ hóa nhiều tác vụ độc lập (Future.wait)

// Khi ứng dụng khởi động, bạn cần tải thông tin cá nhân (mất 1 giây), danh sách thông báo (mất 2 giây), và cài đặt hệ thống (mất 1.5 giây) cùng lúc.

// **Yêu cầu:**

// - Viết 3 hàm giả lập tương ứng: `fetchProfile()`, `fetchNotifications()`, `fetchSettings()`.
// - Sử dụng `Future.wait` trong hàm `main()` để chạy cả 3 tác vụ này song song (đồng thời) nhằm tối ưu thời gian chờ.
// - In ra thông báo hoàn thành kèm theo kết quả của cả 3 tác vụ sau khi tất cả đã chạy xong.

import 'dart:io';
void main(List<String> args) async {
  Future<String>profile = fetchProfile();
  Future<String>notifications = fetchNotifications();
  Future<String>settings = fetchSettings();
  List<String>results = await Future.wait([profile, notifications, settings]);
  print("Tất cả tác vụ đã hoàn thành:");
  print("Thông tin cá nhân: ${results[0]}");
  print("Danh sách thông báo: ${results[1]}");
  print("Cài đặt hệ thống: ${results[2]}");
}
Future<String>fetchProfile() async{
  await Future.delayed(Duration(seconds:1));
  return "Thông tin cá nhân đã được tải.";
}
Future<String>fetchNotifications() async{
  await Future.delayed(Duration(seconds:2));
  return "Danh sách thông báo đã được tải.";
}
Future<String>fetchSettings() async{
  await Future.delayed(Duration(seconds:1, milliseconds:500));
  return "Cài đặt hệ thống đã được tải.";
}
