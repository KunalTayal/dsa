List<int> twoSum(List<int> nums, int target) {
  Map<int, int> record = {};
  for (int i = 0; i < nums.length; i++) {
    if (record.containsKey(target - nums[i])) {
      return [record[target - nums[i]]!, i];
    } else {
      record[nums[i]] = i;
    }
  }
  return [];
}

String twoSumWithoutHashMap(List<int> nums, int target) {
  nums.sort();
  int i = 0;
  int j = nums.length - 1;
  while (i < j) {
    if (nums[i] + nums[j] < target) {
      i++;
    } else if (nums[i] + nums[j] > target) {
      j--;
    } else {
      return 'YES';
    }
  }
  return 'NO';
}
