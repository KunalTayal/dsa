import 'dart:math';

countDigit(int n) {
  //brute force
  // int count = 0;
  // while (n > 0) {
  //   count++;
  //   n = (n ~/ 10);
  // }

  // return count;

  // String Conversion method
  // return n.toString().length;

  // log method(mathematically)
  return (log(n) ~/ log(10)) + 1;
}
