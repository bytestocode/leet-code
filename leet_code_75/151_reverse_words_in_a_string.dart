class Solution {
  String reverseWords(String s) {
    String result = '';
    String temp = '';
    for (var i = 0; i < s.length; i++) {
      if (s[i] == ' ') {
        if (temp.isNotEmpty) {
          result = result.isEmpty ? temp : temp + ' ' + result;
          temp = '';
        }
      } else {
        temp += s[i];
      }
    }

    if (temp.isNotEmpty) {
      result = result.isEmpty ? temp : temp + ' ' + result;
    }

    return result;
  }
}
