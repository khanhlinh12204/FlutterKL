// ### Bài 16: Tính trung bình cộng
// Tính giá trị trung bình của các phần tử trong một `List<double>`.
import 'dart:io';

void main(List<String> args) {
  List<double> n=stdin.readLineSync()!.split(" ").map(double.parse).toList();
  double sum=0;
  for(double i in n){
    sum+=i;
  }
  double avg=sum/n.length;
  print("Trung bình cộng: $avg");
}