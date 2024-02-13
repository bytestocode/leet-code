class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    // nums1과 nums2에서 고유한 요소들만을 가지는 Set 생성
    final Set<int> set1 = Set.from(nums1);
    final Set<int> set2 = Set.from(nums2);

    // set1에서 set2에 없는 요소들을 찾고, 그 반대도 수행
    final List<int> uniqueNums1 = set1.difference(set2).toList();
    final List<int> uniqueNums2 = set2.difference(set1).toList();

    // 결과 리스트에 추가
    return [uniqueNums1, uniqueNums2];
  }
}