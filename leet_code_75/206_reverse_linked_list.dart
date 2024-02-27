// Link: https://leetcode.com/problems/reverse-linked-list

class ListNode {
  ListNode(this.val, [this.next]);

  int val;
  ListNode? next;
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;
    while (current != null) {
      ListNode? next = current.next; // 다음 노드를 저장
      current.next = prev; // 현재 노드의 next를 이전 노드로 변경
      prev = current; // 이전 노드를 현재 노드로 변경
      current = next; // 현재 노드를 다음 노드로 변경
    }
    return prev; // 새로운 헤드 반환
  }
}
