findLargestSubArr(List<int> nums) {
  int maxSum = nums[0];
  int min = 0;
  int max = 0;
  int sum = 0;
  int i = 0;
  int lower = 0;
  int upper = 0;
  while (i < nums.length) {
    if (sum >= 0) {
      sum = sum + nums[i];
      upper = i;
    } else {
      sum = 0;
      lower = i;
    }
    if (sum > 0) {
      (maxSum >= sum) ? maxSum : sum;
    } else {
      maxSum = maxSum > (sum + nums[i]) ? maxSum : (sum + nums[i]);
    }

    min = (upper - lower) < (max - min) ? min : lower;
    max = (upper - lower) < (max - min) ? max : upper;
    i++;
  }

  List<int> subArr = nums.sublist(min, max);

  return "Sum of Largest sub array $subArr : $maxSum";
}