import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    // Initialize variables
    double maxAverage = double.negativeInfinity;
    double currentSum = 0;

    // Sliding window approach
    for (int i = 0; i < nums.length; i++) {
      // Add current element to the window
      currentSum += nums[i];

      // Check if window size is reached
      if (i >= k - 1) {
        // Calculate average for the current window
        double currentAverage = currentSum / k;

        // Update max average if necessary
        maxAverage = max(maxAverage, currentAverage);

        // Remove the first element from the window
        currentSum -= nums[i - k + 1];
      }
    }

    return maxAverage;
  }
}
