// Link: https://leetcode.com/problems/number-of-recent-calls
class RecentCounter {

  RecentCounter() {
    
  }

  // ping 데이터를 누적해서 저장할 리스트
  final List<int> pings = [];
  
  int? ping(int t) {
    // ping 데이터 추가
    pings.add(t);

    int? count;
    for (final ping in pings) {
      // 3000ms 이내의 데이터만 카운트
      if (ping >= t - 3000 && ping <= t) {
        count = (count ?? 0) + 1;
      }
    }
    return count;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */