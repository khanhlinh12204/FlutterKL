// ### Bài 9: Lọc dữ liệu thời gian thực từ Stream (Stream listen)

// **Yêu cầu:** Sử dụng Stream tạo ra từ Bài 8.

// - Trong hàm `main()`, hãy lắng nghe (`.listen()`) Stream này.
// - Chỉ in ra màn hình các số nhận được nếu số đó lớn hơn 50.
// - Khi Stream kết thúc (hoàn thành), in ra dòng chữ: `"Đã đóng luồng dữ liệu!"`.

// ---
import 'dart:async';
import 'dart:math';
void main(List<String>args) async{
  await for(int numbers in randomnumberStream()){
    if(numbers > 50){
      print("Số lớn hơn 50: $numbers");
    }
  }
  print("Đã đóng luồng dữ liệu!");
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

 