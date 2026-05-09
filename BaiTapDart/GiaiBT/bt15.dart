// ### Bài 15: Thao tác với List
// Cho danh sách `List<int> numbers = [5, 2, 9, 1, 5, 6];`.
// - Tìm giá trị lớn nhất trong danh sách.
// - Tìm giá trị nhỏ nhất trong danh sách.
void main(List<String> args) {
  List<int> numbers =[5, 2, 9, 1, 5, 6];
  int max = numbers[0];
  int min = numbers[0];
  for(int i=1; i<numbers.length;i++){
    if(numbers[i]>max){
      max = numbers[i];
    }
    if(numbers[i]<min){
      min = numbers[i];
    }
  }
  print("Giá trị lớn nhất: $max");
  print("Giá trị nhỏ nhất: $min");
}