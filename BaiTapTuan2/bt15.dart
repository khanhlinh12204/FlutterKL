// ### Bài 15: Phân tích và lọc dữ liệu trực tiếp khi Parse JSON

// Cho chuỗi JSON chứa danh sách lớp học:

// ```json
// {
//   "class_id": "IT_K46",
//   "students": [
//     {"name": "Thái", "score": 8.5},
//     {"name": "Bảo", "score": 4.0},
//     {"name": "An", "score": 7.5}
//   ]
// }
// ```

// **Yêu cầu:** Thiết kế class `ClassRoom` chứa `classId` và `students` (là `List<Student>`).

// Khi viết hàm `fromMap(Map<String, dynamic> map)`, hãy áp dụng kết hợp phương thức lọc mảng ở Phần 1 để chỉ nạp vào danh sách học sinh những bạn có điểm số `score >= 5.0` (những bạn đạt yêu cầu). Các bạn dưới 5.0 sẽ bị loại bỏ ngay khi parse dữ liệu từ JSON vào Object.
import 'dart:io';
import 'dart:convert';
class Student{
  String name;
  double score;
  Student(this.name, this.score);
  factory Student.fromMap(Map<String, dynamic> map){
    return Student(
      map["name"],
      map["score"]
    );
  }
}
class ClassRoom{
  String classId;
  List<Student> students;
  ClassRoom(this.classId, this.students);
  factory ClassRoom.fromMap(Map<String, dynamic> map){
    return ClassRoom(
      map["class_id"],
      (map["students"] as List)
          .map((item) => Student.fromMap(item))
          .where((student) => student.score >= 5.0)
          .toList()
    );
  }
}
void main(List<String> args){
  String jsonData = '''
  {
    "class_id": "IT_K46",
    "students": [
      {"name": "Thái", "score": 8.5},
      {"name": "Bảo", "score": 4.0},
      {"name": "An", "score": 7.5}
    ]
  }
  ''';
  Map<String, dynamic> data = jsonDecode(jsonData);
  ClassRoom classRoom = ClassRoom.fromMap(data);
  print("Class ID: ${classRoom.classId}");
  print("Học sinh đạt yêu cầu:");
  for (var student in classRoom.students) {
    print("- ${student.name} with score ${student.score}");
  }
}