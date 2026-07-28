void main() {
  print(printNRecursive("Kunal", 5));
}

String printNRecursive(String str, int n) {
  if (n == 1) {
    return str;
  } else {
    return str + " " + printNRecursive(str, n - 1);
  }
}
