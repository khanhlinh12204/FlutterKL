## Phần 1: Biến và Kiểu Dữ Liệu

### Bài 1: Hello World
Viết chương trình in ra dòng chữ: `Chào mừng bạn đến với lập trình Dart!`.

### Bài 2: Khai báo và Xuất dữ liệu
Khai báo các biến sau:
- `ten`: Kiểu String (tên của bạn).
- `tuoi`: Kiểu int (tuổi của bạn).
- `isStudent`: Kiểu bool (trạng thái sinh viên).

In ra màn hình theo định dạng: `Tên: [ten], Tuổi: [tuoi], Sinh viên: [isStudent]`.

### Bài 3: Tính toán cơ bản
Nhập (hoặc khai báo cứng) hai số thực `a` và `b`. Tính và in ra:
- Tổng `a + b`
- Hiệu `a - b`
- Tích `a * b`
- Thương `a / b`
- Thương nguyên `a ~/ b`

---

## Phần 2: Cấu trúc Điều kiện (If, Else, Switch)

### Bài 4: Kiểm tra số chẵn lẻ
Viết chương trình kiểm tra một số nguyên `n`. Nếu `n` là số chẵn, in "Số chẵn", ngược lại in "Số lẻ".

### Bài 5: Tìm số lớn nhất
Cho ba số nguyên `x, y, z`. Hãy tìm và in ra số lớn nhất trong 3 số đó bằng cách sử dụng `if...else`.

### Bài 6: Kiểm tra năm nhuận
Một năm được coi là năm nhuận nếu nó chia hết cho 4 nhưng không chia hết cho 100, HOẶC chia hết cho 400. Viết chương trình kiểm tra một năm `year` bất kỳ.

### Bài 7: Phân loại điểm số (Switch Case)
Viết chương trình nhận vào một ký tự điểm `grade` (A, B, C, D, F) và in ra đánh giá tương ứng:
- 'A': Xuất sắc
- 'B': Giỏi
- 'C': Khá
- 'D': Trung bình
- 'F': Yếu
- Khác: Không xác định

---

## Phần 3: Vòng lặp (For, While)

### Bài 8: In dãy số
Sử dụng vòng lặp `for` để in các số từ 1 đến 20 trên cùng một dòng.

### Bài 9: Tính tổng từ 1 đến N
Viết chương trình tính tổng các số từ 1 đến một số nguyên `N` cho trước.

### Bài 10: Bảng cửu chương
In ra bảng cửu chương của một số `n` bất kỳ (từ 1 đến 10).
*Ví dụ: 5 x 1 = 5, 5 x 2 = 10...*

### Bài 11: Tính giai thừa
Viết chương trình tính giai thừa của một số nguyên dương `n` ($n! = 1*2*3*....*n).

---

## Phần 4: Hàm (Functions)

### Bài 12: Hàm tính chu vi, diện tích
Viết 2 hàm:
- `tinhChuVi(double r)`: Trả về chu vi hình tròn.
- `tinhDienTich(double r)`: Trả về diện tích hình tròn.
(Sử dụng số Pi xấp xỉ 3.14).

### Bài 13: Kiểm tra số nguyên tố
Viết hàm `bool isPrime(int n)` trả về `true` nếu `n` là số nguyên tố, ngược lại trả về `false`.

### Bài 14: Đảo ngược chuỗi
Viết một hàm nhận vào một String và trả về String đó theo thứ tự ngược lại.
*Ví dụ: "Dart" -> "traD"*

---

## Phần 5: List và Map

### Bài 15: Thao tác với List
Cho danh sách `List<int> numbers = [5, 2, 9, 1, 5, 6];`.
- Tìm giá trị lớn nhất trong danh sách.
- Tìm giá trị nhỏ nhất trong danh sách.

### Bài 16: Tính trung bình cộng
Tính giá trị trung bình của các phần tử trong một `List<double>`.

### Bài 17: Lọc phần tử
Từ một danh sách số nguyên cho trước, hãy tạo ra một danh sách mới chỉ bao gồm các số chia hết cho 3.

### Bài 18: Quản lý từ điển (Map)
Tạo một `Map<String, String>` lưu trữ cặp Từ tiếng Anh - Nghĩa tiếng Việt.
- Thêm 3 từ mới vào Map.
- Viết chương trình cho phép người dùng tìm kiếm nghĩa của một từ.

---

## Phần 6: Lập trình hướng đối tượng (OOP)

### Bài 19: Lớp Hình Chữ Nhật
Tạo lớp `Rectangle`:
- Thuộc tính: `width`, `height`.
- Phương thức: `calculateArea()` (tính diện tích), `calculatePerimeter()` (tính chu vi).
- Khởi tạo đối tượng và gọi phương thức.

### Bài 20: Quản lý Sinh viên
Tạo lớp `Student`:
- Thuộc tính: `id`, `name`, `mathScore`, `englishScore`.
- Phương thức: `averageScore()` trả về điểm trung bình 2 môn.
- Tạo một danh sách `List<Student>` gồm 3 sinh viên, in ra tên và điểm trung bình của từng người.