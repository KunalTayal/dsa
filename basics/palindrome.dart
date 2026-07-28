palindromeChecker(int n) {
  int reverse = reverseNum(n);
  if (n == reverse) {
    return true;
  } else {
    return false;
  }
}

// refer from reverse a number
reverseNum(int n) {
  int temp = 0;

  while (n > 0) {
    temp = temp * 10;
    temp = temp + (n % 10);
    n = (n / 10).floor();
  }

  return (temp);
}
