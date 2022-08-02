import 'dart:io';

void Second_highest_lowest(List<int> array_nums, int array_size) {
  if (array_size == 2) {
    if (array_nums[0] < array_nums[1]) {
      print("test");
    } else {
      print("test");
    }
  } else {
    bool flag;
    int temp;

    do {
      flag = false;

      for (int x = 0; x < array_size - 1; x++) {
        if (array_nums[x] > array_nums[x + 1]) {
          temp = array_nums[x];
          array_nums[x] = array_nums[x + 1];
          array_nums[x + 1] = temp;
          flag = true;
        }
      }
    } while (flag);

    int index = 0;
    int index2 = array_size - 1;
    for (int y = 0; y < array_size - 1; y++) {
      if (array_nums[y] == array_nums[y + 1]) {
        index++;
      } else {
        break;
      }
    }

    for (int z = array_size - 1; array_size > 0; z--) {
      if (array_nums[z] == array_nums[z - 1]) {
        index2--;
      } else {
        break;
      }
    }
    print("Second lowest number of the said array: ${array_nums[index + 1]}");
    print("Second highest number of the said array: ${array_nums[index2 - 1]}");
  }
}

int main() {
  List<int> nums1 = [1, 2, 3, 4, 12, 12, 39, 44, 50, 15, 9, 8, 60, 72];
  int size_A = nums1.length;
  stdout.write("Array elements: ");
  for (int i = size_A - 1; i >= 0; i--) stdout.write(nums1[i]);
  print(" ");
  Second_highest_lowest(nums1, size_A);

  return 0;
}
