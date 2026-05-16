// ### Bài 14: Xử lý an toàn dữ liệu khuyết thiếu (Null Safety in Map)

// Khi gọi API, có những lúc dữ liệu trả về bị thiếu một số trường hoặc bị gán bằng `null`:

// ```json
// {
//   "user_name": "Thái",
//   "bio": null
// }
// ```

// **Yêu cầu:** Tạo class `UserProfile` có thuộc tính `userName` (String, không được null), `bio` (String?, có thể null), và `avatarUrl` (String, không được null).

// Viết phương thức `fromMap(Map<String, dynamic> map)` sao cho:

// - Nếu `bio` bị null, thuộc tính `bio` của class nhận giá trị `null`.
// - Nếu key `avatarUrl` không tồn tại trong map hoặc bị null, hãy tự động gán cho thuộc tính `avatarUrl` một đường dẫn ảnh mặc định: `"https://example.com/default-avatar.png"`.

// ---
import 'dart:io';
import 'dart:convert';
class UserProfile{
  String userName;
  String? bio;
  String avatarUrl;
  UserProfile(this.userName, this.bio, this.avatarUrl);
  factory UserProfile.fromMap(Map<String, dynamic> map){
    return UserProfile(
      map["user_name"],
      map["bio"],
      map["avatarUrl"] ?? "https://example.com/default-avatar.png"
    );
  }
}
void main(List<String> args){
  String jsonData = '''
  {
    "user_name": "Thái",
    "bio": null
  }
  ''';
  Map<String, dynamic> data = jsonDecode(jsonData);
  UserProfile userProfile = UserProfile.fromMap(data);
  print("User Name: ${userProfile.userName}");
  print("Bio: ${userProfile.bio}");
  print("Avatar URL: ${userProfile.avatarUrl}");
}
