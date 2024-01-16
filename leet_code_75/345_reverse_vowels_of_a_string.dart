class Solution {
  String reverseVowels(String s) {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    var i = 0;
    var j = s.length - 1;
    var sList = s.runes.toList(); // Runes를 리스트로 변환
  
    while (i < j) {
      while (i < j && !vowels.contains(String.fromCharCode(sList[i]))) {
        i++;
      }
  
      while (i < j && !vowels.contains(String.fromCharCode(sList[j]))) {
        j--;
      }
  
      if (i < j) {
        // 모음 위치를 찾았으므로 서로 교환
        final int temp = sList[i];
        sList[i] = sList[j];
        sList[j] = temp;
        i++;
        j--;
      }
    }
  
    return String.fromCharCodes(sList); 
  }
}