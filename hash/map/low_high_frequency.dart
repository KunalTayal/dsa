void main() {
  int high = 1;
  int low = 1;
  Map<int, int> record = {};
  List<int> nums = [1, 2, 4, 5, 4, 4, 4, 6, 3, 2, 3, 4, 5, 6, 7];
  for (int i = 0; i < nums.length; i++) {
    if (record.containsKey(nums[i])) {
      record[nums[i]] = record[nums[i]]! + 1;
    } else {
      record[nums[i]] = 1;
    }
    low = (low < record[nums[i]]!) ? low : record[nums[i]] ?? 1;
    high = (high > record[nums[i]]!) ? high : record[nums[i]] ?? 1;
  }
  print(record);
  print("Low: $low");
  print("High: $high");
}