// ### Bài 12: Hàm tính chu vi, diện tích
// Viết 2 hàm:
// - `tinhChuVi(double r)`: Trả về chu vi hình tròn.
// - `tinhDienTich(double r)`: Trả về diện tích hình tròn.
// (Sử dụng số Pi xấp xỉ 3.14).
import 'dart:io';

double tinhChuVi(double r){
  return 2*3.14*r;
}
double tinhDienTich(double r){
  return 3.14*r*r;
}
void main(List<String> args) {
  stdout.write("Nhập bán kính r: ");
  double r = double.parse(stdin.readLineSync()!);
  print("Chu vi hình tròn: ${tinhChuVi(r)}");
  print("Diện tích hình tròn: ${tinhDienTich(r)};");
}