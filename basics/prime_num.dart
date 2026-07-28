primeNumberChecker(int n) {
  if (allDivisor(n) == 1) {
    return true;
  } else {
    return false;
  }
}

allDivisor(int n) {
  int count = 0;

  //   for (int i = 1; i <= sqrt(n); i++) { //import math.dart library for sqrt
  //     // Check if i divides N
  //     if (n % i == 0) {
  //       // Add i to the result
  //       record.insertAll(count, [i, if (i != n / i) (n ~/ i)]);
  //       count++;
  //     }
  //   }

  for (int i = 1; i <= n / i; i++) {
    if (n % i == 0) {
      count++;
    }
  }
  return count;
}
