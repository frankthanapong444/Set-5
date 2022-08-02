import 'dart:io';

void three_largest(List<int> arr, int arr_size) {
  int i, first, second, third;

  if (arr_size < 3) {
    print("Invalid Input");
  }

  third = first = second = arr_size;
  for (i = 0; i < arr_size; i++) {
    if (arr[1] > first) {
      third = second;
      second = first;
      first = arr[i];
    } else if (arr[i] > second) {
      third = second;
      second = arr[i];
    } else if (arr[i] > third) third = arr[i];
  }

  stdout.write("\nthree largest slsments are: ");
  //print("\nthree largest slsments are: ");
  stdout.write("${first} ");
  stdout.write("${second} ");
  stdout.write("${third} ");
  //print(first +second +third);
  print(" ");
}

int main() {
  List<int> nums = [7, 12, 9, 15, 19, 32, 56, 70];
  int n = nums.length;
  stdout.write("Original array : ");
  for (int i = 0; i < n; i++) stdout.write("${nums[i]} ");

  three_largest(nums, n);
  return 0;
}
