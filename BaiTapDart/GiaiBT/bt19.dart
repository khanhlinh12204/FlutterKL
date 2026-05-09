// ### Bài 19: Lớp Hình Chữ Nhật
// Tạo lớp `Rectangle`:
// - Thuộc tính: `width`, `height`.
// - Phương thức: `calculateArea()` (tính diện tích), `calculatePerimeter()` (tính chu vi).
// - Khởi tạo đối tượng và gọi phương thức.
import 'dart:io';
class HCN{
  double CD;
  double CR;
  HCN(this.CD, this.CR);
  double calculateArea(){
    return CD*CR;
  }
  double calculatePerimeter(){
    return 2*(CD+CR);
  }

}
void main(List<String> args){
  stdout.write("Nhập chiều dài: ");
  double CD = double.parse(stdin.readLineSync()!);
  stdout.write("Nhập chiều rộng: ");
  double CR = double.parse(stdin.readLineSync()!);
  HCN hcn = HCN(CD, CR);
  print("Diện tích hình chữ nhật: ${hcn.calculateArea()}");
  print("Chu vi hình chữ nhật: ${hcn.calculatePerimeter()}");
}