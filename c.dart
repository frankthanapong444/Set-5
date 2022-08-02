import 'dart:io';

void main() {
  print("Enter number of rows to be printed");
  var n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; ++i) {
    for (int j = 0; j < n - 1; ++j) {
      stdout.write(" ");
    }
    for (int j = 0; j < i; ++j) {
      stdout.write(String.fromCharCode(65 + j));
    }

    for (int j = i - 1; j > 0; --j) {
      stdout.write(String.fromCharCode(65 + j - 1));
    }
    print("\n");
  }
}
