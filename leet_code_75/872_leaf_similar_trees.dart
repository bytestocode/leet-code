// https://leetcode.com/problems/leaf-similar-trees

class TreeNode {
  TreeNode([this.val = 0, this.left, this.right]);

  int val;
  TreeNode? left;
  TreeNode? right;
}

class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> leaves1 = [];
    List<int> leaves2 = [];

    // 각 트리의 잎 노드를 찾아 리스트에 저장합니다.
    findLeaves(root1, leaves1);
    findLeaves(root2, leaves2);

    // 두 리스트의 길이와 모든 원소가 같은지 확인합니다.
    if (leaves1.length != leaves2.length) return false;
    for (int i = 0; i < leaves1.length; i++) {
      if (leaves1[i] != leaves2[i]) return false;
    }

    return true;
  }

  void findLeaves(TreeNode? node, List<int> leaves) {
    if (node == null) return;

    // 잎 노드인 경우, 리스트에 값을 추가합니다.
    if (node.left == null && node.right == null) {
      leaves.add(node.val);
      return;
    }

    // 왼쪽과 오른쪽 자식 노드에 대해 재귀 호출을 실행합니다.
    findLeaves(node.left, leaves);
    findLeaves(node.right, leaves);
  }
}
