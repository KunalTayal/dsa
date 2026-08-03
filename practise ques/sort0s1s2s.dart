//Optimal solution O(n) time and O(1) space
sortArrayOf012(List<int> nums) {
  int low = 0;
  int mid = 0;
  int high = nums.length - 1;

  while (mid <= high) {
    if (nums[mid] == 0) {
      nums[mid] = nums[low];
      nums[low] = 0;
      low++;
      mid++;
    } else if (nums[mid] == 2) {
      nums[mid] = nums[high];
      nums[high] = 2;
      high--;
    } else if (nums[mid] == 1) {
      mid++;
    }
  }
  return nums;
}

//Solution using counting O(2n) time and O(1) space and change in second time
 sortArrayUsingCounting(List<int> nums) {
  int count0 = 0;
  int count1 = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 0) {
      count0++;
    } else if (nums[i] == 1) {
      count1++;
    }
  }
  for (int i = 0; i < count0; i++) {
    nums[i] = 0;
  }
  for (int i = count0; i < count0 + count1; i++) {
    nums[i] = 1;
  }
  for (int i = count0 + count1; i < nums.length; i++) {
    nums[i] = 2;
  }
  return nums;
}