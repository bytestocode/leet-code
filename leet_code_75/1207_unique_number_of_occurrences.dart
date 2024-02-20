class Solution {
  bool uniqueOccurrences(List<int> arr) {
    final Map<int, int> occurrenceCountMap = {};

    // arr을 돌면서 숫자가 Map에 있으면 기존 값에 1을 더하고, 없으면 1로 초기화
    for (final num in arr) {
      if (occurrenceCountMap.containsKey(num)) {
        occurrenceCountMap[num] = occurrenceCountMap[num]! + 1;
      } else {
        occurrenceCountMap[num] = 1;
      }
    }

    // Map의 value들을 Set으로 만들어 중복을 제거하고, 길이를 비교
    final Set<int> occurrenceSet = occurrenceCountMap.values.toSet();
    return occurrenceSet.length == occurrenceCountMap.length;
  }
}
