// ### Bài 14: Đảo ngược chuỗi
// Viết một hàm nhận vào một String và trả về String đó theo thứ tự ngược lại.
// *Ví dụ: "Dart" -> "traD"*
import 'dart:io';
String DaoNguoc(String srt){
  String daoNguoc = "";
  for(int i=srt.length-1;i>=0;i--){
    daoNguoc += srt[i];
  }
  return daoNguoc;
}
void main(List<String> args) {
  stdout.write("Nhập một chuỗi: ");
  String input = stdin.readLineSync()!;
  String reversed = DaoNguoc(input);
  print("Chuỗi đảo ngược: $reversed");
}