// https://leetcode.com/problems/maximum-depth-of-binary-tree

/// Definition for a binary tree node.
class TreeNode {
  TreeNode([this.val = 0, this.left, this.right]);

  int val;
  TreeNode? left;
  TreeNode? right;
}

class Solution {
  int maxDepth(TreeNode? root) {
    // 현재 노드가 null이면 깊이는 0
    if (root == null) return 0;

    // 재귀적으로 서브트리의 깊이 계산
    int leftDepth = maxDepth(root.left);
    int rightDepth = maxDepth(root.right);

    // 현재 노드의 깊이(1) + 서브트리의 깊이 중 최댓값
    return 1 + _max(leftDepth, rightDepth);
  }

  // 두 정수 중 최댓값 반환
  int _max(int a, int b) => a > b ? a : b;
}
