allDivisor(int n) {
  List<int> record = [];
  int count = 0;

  // for (int i = 1; i * i <= n; i++) {
  //   // Check if i divides N
  //   if (n % i == 0) {
  //     // Add i to the result
  //     record.insertAll(count, [i, if (i != n / i) (n ~/ i)]);
  //     count++;
  //   }
  // }

  for (int i = 1; i <= n / i; i++) {
    if (n % i == 0) {
      record.insertAll(count, [i, if (i != n ~/ i) n ~/ i]);
      count++;
    }
  }

  // Return the list of divisors
  return record;
}
