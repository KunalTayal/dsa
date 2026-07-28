String printNRecursive(String str, int n) {
  if (n == 1) {
    return str;
  } else {
    return str + " " + printNRecursive(str, n - 1);
  }
}

printNtimesRecursive(int current, int n) {
  if (current > n) return;

  print(current);
  printNtimesRecursive(current + 1, n);
}
