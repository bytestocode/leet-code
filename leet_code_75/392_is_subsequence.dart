class Solution {
  bool isSubsequence(String s, String t) {
    var i = 0;
    var j = 0;
    while (j < t.length && i < s.length) {
      if (t[j] == s[i]) {
        i++;
        j++;
      } else {
        j++;
      }
    }
    return i == s.length;
  }
}
