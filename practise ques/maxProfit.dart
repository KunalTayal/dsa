void main() {
  List<int> arr = [7, 1, 5, 3, 6, 4];
  print(maxProfit(arr));
}

maxProfit(List<int> nums) {
  int maxProfit = 0;
  int min = nums[0];

  for (int i = 1; i < nums.length; i++) {
    maxProfit = maxProfit > (nums[i] - min) ? maxProfit : (nums[i] - min);
    min = min < nums[i] ? min : nums[i];
  }
  return maxProfit;
}