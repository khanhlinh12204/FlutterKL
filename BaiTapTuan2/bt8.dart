// ### Bài 8: Bộ tạo số ngẫu nhiên ngắt quãng (Stream Generator)

// **Yêu cầu:** Viết một hàm `async*` trả về một `Stream<int>`.

// - Cứ sau mỗi 500 mili-giây, hàm này sẽ phát ra (`yield`) một số nguyên ngẫu nhiên từ 1 đến 100.
// - Nếu số ngẫu nhiên sinh ra chia hết cho 10, hãy kết thúc Stream ngay lập tức (không phát thêm số nữa).

// ---
import 'dart:io';
import 'dart:math';
void main(List<String>args) async{
  await for(int numbers in randomnumberStream()){
    print("Số ngẫu nhiên: $numbers");
  }
}
Stream<int> randomnumberStream() async*{
  Random random = Random();
  while(true){
    await Future.delayed(Duration(milliseconds:500));
    int number = random.nextInt(100) + 1;
    yield number;
    if(number % 10 == 0){
      print("Số $number chia hết cho 10, kết thúc Stream.");
      break;
    }
  }
}
