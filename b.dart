import 'dart:io';

class Box {
  double length = 0;
  double breadth = 0;
  double height = 0;

  double getVolume() {
    return (length * breadth * height);
  }

  double setLength(double len) {
    return (length = len);
  }

  double setBreadth(double bre) {
    return (breadth = bre);
  }

  double setHeight(double hei) {
    return (height = hei);
  }
}

void main() {
  Box Box1 = Box();
  Box Box2 = Box();
  double volume = 0.0;

  Box1.setLength(6.0);
  Box1.setBreadth(7.0);
  Box1.setHeight(5.0);

  Box1.setLength(12.0);
  Box1.setBreadth(13.0);
  Box1.setHeight(10.0);

  volume = Box1.getVolume();
  print("Volume of Box1 : $volume ");

  volume = Box2.getVolume();
  print("Volume of Box2 : $volume ");
  print("0.0 in dart = NaN in c++ nan= Not a Number");
}
