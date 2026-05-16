// ### Bài 12: Mô hình dữ liệu lồng nhau (Nested Object)

// Cho dữ liệu bình luận từ API:

// ```json
// {
//   "id": "comment_101",
//   "content": "Bài viết này rất hay!",
//   "author": {
//     "user_id": "U99",
//     "display_name": "Thái Lê"
//   }
// }
// ```

// **Yêu cầu:**

// - Tạo class `User` chứa thuộc tính của tác giả.
// - Tạo class `Comment` chứa thuộc tính bình luận và đối tượng `User` lồng bên trong.
// - Viết các phương thức `fromMap` cho cả hai class sao cho khi gọi `Comment.fromMap(data)`, đối tượng `User` bên trong cũng tự động được khởi tạo chính xác.

// ---
import 'dart:io';
import 'dart:convert';
class User{
  String userId;
  String displayName;
  User(this.userId, this.displayName);
  factory User.fromMap(Map<String, dynamic> map){
    return User(
      map["user_id"],
      map["display_name"]
    );
  }
}
class Comment{
  String id;
  String content;
  User DT;
  Comment(this.id, this.content, this.DT);
  factory Comment.fromMap(Map<String, dynamic> map){
    return Comment(
      map["id"],
      map["content"],
      User.fromMap(map["DT"])
    );
  }
}
void main(List<String> args){
  String jsonData = '''
  {
    "id": "comment_101",
    "content": "Bài viết này rất hay!",
    "DT": {
      "user_id": "U99",
      "display_name": "Thái Lê"
    }
  }
  ''';
  Map<String, dynamic> data = jsonDecode(jsonData);
  Comment comment = Comment.fromMap(data);
  print("Comment ID: ${comment.id}");
  print("Content: ${comment.content}");
  print(" ID: ${comment.DT.userId}");
  print(" Name: ${comment.DT.displayName}");
}
