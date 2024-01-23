class Solution {
  void moveZeroes(List<int> nums) {
    // Initialize two pointers: i for the current element and j for the next non-zero element
    var i = 0;
    var j = 0;

    // Loop through the array until j reaches the end
    while (j < nums.length) {
      // If the current element is zero, find the next non-zero element and swap them
      if (nums[i] == 0) {
        while (j < nums.length && nums[j] == 0) {
          j++;
        }
        if (j < nums.length) {
          int temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
        }
      }
      // Increment both pointers
      i++;
      j++;
    }
  }
}
