import 'dart:math';

armstrongChecker(int n) {
  int len = n.toString().length;
  int og = n;
  num sum = 0;
  for (int i = 0; i < len; i++) {
    sum = sum + pow((n % 10), len);
    n = (n ~/ 10);
  }
  if (sum == og) {
    return true;
  } else {
    return false;
  }
}
