import 'dart:math';

class Solution {
  int largestAltitude(List<int> gain) {
    // 최대 고도
    int maxAltitude = 0;
    // 누계 고도
    int accumulatedAltitude = 0;

    for (var i = 0; i < gain.length; i++) {
        accumulatedAltitude += gain[i];
        maxAltitude = max(maxAltitude, accumulatedAltitude);
    }
    
    return maxAltitude;
  }
}