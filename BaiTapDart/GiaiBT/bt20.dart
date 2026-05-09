// ### Bài 20: Quản lý Sinh viên
// Tạo lớp `Student`:
// - Thuộc tính: `id`, `name`, `mathScore`, `englishScore`.
// - Phương thức: `averageScore()` trả về điểm trung bình 2 môn.
// - Tạo một danh sách `List<Student>` gồm 3 sinh viên, in ra tên và điểm trung bình của từng người.
import 'dart:io';

class Student{
  String id;
  String name;
  double mathScore;
  double englishScore;
  Student(this.id, this.name, this.mathScore, this.englishScore);
  double averageScore(){
    return (mathScore + englishScore) / 2;
  }
}
void main(List<String> args){
  List<Student> students = [
    Student("22T1020201", "Nguyen Khanh", 9.0, 10.0),
    Student("22T1020202", "Bach Thi", 10.0, 9.0),
    Student("22T1020203", "Nguyen Thanh", 10.0, 10.0)
  ];

  for (var student in students) {
    print("Tên: ${student.name}, Điểm trung bình: ${student.averageScore()}");
  }
}