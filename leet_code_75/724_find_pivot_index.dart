class Solution {
  int pivotIndex(List<int> nums) {
    // 피벗 인덱스 기준 우측 합계
    int rightSum = nums.fold(0, (a, b) => a + b);
    // 피벗 인덱스 기준 좌측 합계
    int leftSum = 0;

    for (var i = 0; i < nums.length; i++) {
      rightSum -= nums[i];
      if (leftSum == rightSum) {
        return i;
      } else {
        leftSum += nums[i];
      }
    }

    return -1;
  }
}

/// 처음 시도한 해답
/// totalSum이 없어도 되겠다 싶어 rightSum으로 대체
// class Solution {
//   int pivotIndex(List<int> nums) {
//     final totalSum = nums.fold(0, (a, b) => a + b);
//     int leftSum = 0;
//     for (var i = 0; i < nums.length; i++) {
//       int rightSum = totalSum - leftSum - nums[i];
//       if (leftSum == rightSum) {
//         return i;
//       } else {
//         leftSum += nums[i];
//       }
//     }
//
//     return -1;
//   }
// }
