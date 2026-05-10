# Bài Tập Tuần 2

Tuần này sẽ luyện tập các mục nhằm phục vụ việc call API và parse dữ liệu. (Cố lên mấy chị :>)

Những cái cần ôn đầu tiên: `.map()`, `.reduce()`, `.where()`, `.filter()`, `.forEach()`, `.any()`, `.every()` (trong List, Set, Map). Mấy chị tìm hiểu mấy cái này nhé, kiểu viết hàm đồ như khi làm việc với `List` trong JS á.

**Ví dụ:**

```dart
List<String> names = ["A", "B", "C", "D", "E"];

List<String> data = names.map((e) {
    return "Chữ cái: $e";
}).toList();

print(data);
```

---

## Phần 1: Xử lý mảng (map, where, fold, reduce, indexed...)

### Bài 1: Bộ lọc và biến đổi số (where, map)

Cho danh sách số nguyên:

```dart
List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
```

**Yêu cầu:**

- Lọc ra các số chẵn trong danh sách.
- Nhân đôi các số chẵn đó lên.
- Chuyển đổi danh sách kết quả thành một `List<String>` với định dạng: `"Số chẵn sau nhân đôi: X"`.

**Đầu ra mong muốn:** `["Số chẵn sau nhân đôi: 4", "Số chẵn sau nhân đôi: 8", ...]`

---

### Bài 2: Đánh dấu vị trí phần tử dài (indexed / asMap)

Cho danh sách tên thành viên:

```dart
List<String> members = ["An", "Thái", "Bảo", "Phương", "Vy"];
```

**Yêu cầu:** Sử dụng thuộc tính `.indexed` (của Dart 3) hoặc `.asMap()`. Hãy lọc ra những thành viên có tên dài hơn 3 ký tự, sau đó in ra danh sách chuỗi hiển thị vị trí ban đầu của họ.

**Đầu ra mong muốn:** `["Vị trí 1: Thái", "Vị trí 3: Phương"]` (Giữ nguyên index gốc của họ trong mảng ban đầu).

---

### Bài 3: Tính tổng giá trị giỏ hàng (fold)

Cho danh sách sản phẩm dưới dạng Map:

```dart
List<Map<String, dynamic>> cart = [
  {"name": "Chuột Logitech", "price": 450000, "quantity": 2},
  {"name": "Bàn phím cơ", "price": 1200000, "quantity": 1},
  {"name": "Lót chuột", "price": 80000, "quantity": 3},
];
```

**Yêu cầu:** Sử dụng phương thức `.fold()` để tính tổng số tiền cần thanh toán của toàn bộ giỏ hàng (Tổng tiền = Giá × Số lượng của từng sản phẩm). Không sử dụng vòng lặp `for` hay `forEach`.

---

### Bài 4: Tìm lập trình viên kỳ cựu nhất (reduce)

Cho danh sách số năm kinh nghiệm của một nhóm:

```dart
List<int> experiences = [2, 5, 1, 8, 4, 7];
```

**Yêu cầu:** Sử dụng `.reduce()` để tìm số năm kinh nghiệm lớn nhất trong danh sách trên. Thử viết thêm một hàm khác cũng dùng `.reduce()` nhưng để tìm số năm nhỏ nhất.

---

### Bài 5: Chuẩn hóa dữ liệu danh mục (where, map, toSet)

Cho danh sách danh mục sản phẩm từ cơ sở dữ liệu có chứa khoảng trắng thừa và bị lặp lại:

```dart
List<String> rawCategories = [
  "  Điện thoại ", " Laptop", "điện thoại",
  "Đồ gia dụng", "LAPTOP  ", " Đồ gia dụng "
];
```

**Yêu cầu:**

- Loại bỏ khoảng trắng ở hai đầu của từng chuỗi (`.trim()`).
- Chuyển tất cả về chữ viết thường (`.toLowerCase()`).
- Loại bỏ hoàn toàn các danh mục bị trùng lặp để thu được một danh sách các danh mục duy nhất. *(Gợi ý: dùng `.toSet()`)*

---

## Phần 2: Xử lý Bất đồng bộ (Async, Await, Future, Stream)

### Bài 6: Gọi API tỷ giá và xử lý lỗi (Future & Try-Catch)

**Yêu cầu:** Viết một hàm `Future<double> fetchExchangeRate(String currency)` nhận vào mã tiền tệ (ví dụ: `"USD"`, `"VND"`).

- Hàm sẽ giả lập trì hoãn 1.5 giây bằng `Future.delayed`.
- Nếu mã truyền vào là `"USD"`, trả về giá trị `25400.0`.
- Nếu mã truyền vào là `"VND"`, hãy dùng `throw Exception("Không cần quy đổi tiền Việt!")`.
- Trong hàm `main()`, hãy gọi thử hàm này với cả hai trường hợp `"USD"` và `"VND"`, sử dụng `try-catch` để bắt lỗi và in ra thông báo lỗi đẹp mắt nếu có.

---

### Bài 7: Đồng bộ hóa nhiều tác vụ độc lập (Future.wait)

Khi ứng dụng khởi động, bạn cần tải thông tin cá nhân (mất 1 giây), danh sách thông báo (mất 2 giây), và cài đặt hệ thống (mất 1.5 giây) cùng lúc.

**Yêu cầu:**

- Viết 3 hàm giả lập tương ứng: `fetchProfile()`, `fetchNotifications()`, `fetchSettings()`.
- Sử dụng `Future.wait` trong hàm `main()` để chạy cả 3 tác vụ này song song (đồng thời) nhằm tối ưu thời gian chờ.
- In ra thông báo hoàn thành kèm theo kết quả của cả 3 tác vụ sau khi tất cả đã chạy xong.

---

### Bài 8: Bộ tạo số ngẫu nhiên ngắt quãng (Stream Generator)

**Yêu cầu:** Viết một hàm `async*` trả về một `Stream<int>`.

- Cứ sau mỗi 500 mili-giây, hàm này sẽ phát ra (`yield`) một số nguyên ngẫu nhiên từ 1 đến 100.
- Nếu số ngẫu nhiên sinh ra chia hết cho 10, hãy kết thúc Stream ngay lập tức (không phát thêm số nữa).

---

### Bài 9: Lọc dữ liệu thời gian thực từ Stream (Stream listen)

**Yêu cầu:** Sử dụng Stream tạo ra từ Bài 8.

- Trong hàm `main()`, hãy lắng nghe (`.listen()`) Stream này.
- Chỉ in ra màn hình các số nhận được nếu số đó lớn hơn 50.
- Khi Stream kết thúc (hoàn thành), in ra dòng chữ: `"Đã đóng luồng dữ liệu!"`.

---

### Bài 10: Giới hạn thời gian kết nối (Future Timeout)

**Yêu cầu:**

- Viết một hàm `Future<String> downloadHeavyFile()` giả lập việc tải file nặng mất 4 giây để hoàn thành.
- Trong hàm `main()`, gọi hàm tải file này nhưng áp dụng phương thức `.timeout()` giới hạn thời gian chờ chỉ trong 2 giây.
- Hãy bắt lỗi `TimeoutException` để in ra dòng chữ `"Tải file thất bại do kết nối quá hạn!"` thay vì để chương trình bị crash.

---

## Phần 3: Chuyển đổi dữ liệu (fromMap, toMap, fromJson, toJson)

### Bài 11: Mô hình hóa sản phẩm cơ bản

**Yêu cầu:** Thiết kế class `Product` gồm các thuộc tính: `id` (String), `name` (String), `price` (double), `isAvailable` (bool).

- Viết đầy đủ: Constructor, `fromMap`, `toMap`, `fromJson`, và `toJson` cho class này.
- Viết hàm `main()` tạo thử một đối tượng `Product`, chuyển nó thành JSON String rồi khôi phục ngược lại để kiểm tra.

---

### Bài 12: Mô hình dữ liệu lồng nhau (Nested Object)

Cho dữ liệu bình luận từ API:

```json
{
  "id": "comment_101",
  "content": "Bài viết này rất hay!",
  "author": {
    "user_id": "U99",
    "display_name": "Thái Lê"
  }
}
```

**Yêu cầu:**

- Tạo class `User` chứa thuộc tính của tác giả.
- Tạo class `Comment` chứa thuộc tính bình luận và đối tượng `User` lồng bên trong.
- Viết các phương thức `fromMap` cho cả hai class sao cho khi gọi `Comment.fromMap(data)`, đối tượng `User` bên trong cũng tự động được khởi tạo chính xác.

---

### Bài 13: Xử lý danh sách đối tượng lồng nhau (List of Objects)

Cho dữ liệu đơn hàng chứa danh sách các sản phẩm:

```json
{
  "order_id": "DH_2026",
  "items": [
    {"id": "P01", "name": "Chuột không dây", "price": 350000, "isAvailable": true},
    {"id": "P02", "name": "Lót chuột cỡ lớn", "price": 120000, "isAvailable": true}
  ]
}
```

**Yêu cầu:**

- Sử dụng lại class `Product` ở Bài 11.
- Tạo class `Order` gồm các thuộc tính `orderId` (String) và `items` (`List<Product>`).
- Thiết kế phương thức `fromMap` và `toMap` cho `Order` sao cho nó xử lý mượt mà việc chuyển đổi danh sách `items` từ `List<Map>` thành `List<Product>` và ngược lại.

---

### Bài 14: Xử lý an toàn dữ liệu khuyết thiếu (Null Safety in Map)

Khi gọi API, có những lúc dữ liệu trả về bị thiếu một số trường hoặc bị gán bằng `null`:

```json
{
  "user_name": "Thái",
  "bio": null
}
```

**Yêu cầu:** Tạo class `UserProfile` có thuộc tính `userName` (String, không được null), `bio` (String?, có thể null), và `avatarUrl` (String, không được null).

Viết phương thức `fromMap(Map<String, dynamic> map)` sao cho:

- Nếu `bio` bị null, thuộc tính `bio` của class nhận giá trị `null`.
- Nếu key `avatarUrl` không tồn tại trong map hoặc bị null, hãy tự động gán cho thuộc tính `avatarUrl` một đường dẫn ảnh mặc định: `"https://example.com/default-avatar.png"`.

---

### Bài 15: Phân tích và lọc dữ liệu trực tiếp khi Parse JSON

Cho chuỗi JSON chứa danh sách lớp học:

```json
{
  "class_id": "IT_K46",
  "students": [
    {"name": "Thái", "score": 8.5},
    {"name": "Bảo", "score": 4.0},
    {"name": "An", "score": 7.5}
  ]
}
```

**Yêu cầu:** Thiết kế class `ClassRoom` chứa `classId` và `students` (là `List<Student>`).

Khi viết hàm `fromMap(Map<String, dynamic> map)`, hãy áp dụng kết hợp phương thức lọc mảng ở Phần 1 để chỉ nạp vào danh sách học sinh những bạn có điểm số `score >= 5.0` (những bạn đạt yêu cầu). Các bạn dưới 5.0 sẽ bị loại bỏ ngay khi parse dữ liệu từ JSON vào Object.
