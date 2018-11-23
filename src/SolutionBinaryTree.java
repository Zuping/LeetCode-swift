import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

//Definition for a binary tree node.
class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;
    TreeNode(int x) { val = x; }
}


public class SolutionBinaryTree {
    public static void main(String[] args) {
        Codec codec = new Codec();
        TreeNode root = codec.deserialize("1,2");
        System.out.println(codec.serialize(root));
    }
}

//297. Serialize and Deserialize Binary Tree
class Codec {

    // Encodes a tree to a single string.
    public String serialize(TreeNode root) {
        if (root == null) { return ""; }

        List<String> list = new ArrayList<>();
        Queue<TreeNode> queue = new LinkedList<>();
        queue.add(root);
        while (!queue.isEmpty()) {
            Queue<TreeNode> tmpQueue = new LinkedList<>();
            while (!queue.isEmpty()) {
                TreeNode node = queue.poll();
                if (node == null) {
                    list.add("#");
                } else {
                    list.add(Integer.toString(node.val));
                    tmpQueue.add(node.left);
                    tmpQueue.add(node.right);
                }
            }
            queue = tmpQueue;
        }
        for (int i  = list.size() - 1; i>= 0; i--) {
            if (list.get(i).equals("#")) {
                list.remove(i);
            } else {
                break;
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i ++) {
            sb.append(list.get(i));
            sb.append(",");
        }
        return sb.toString();
    }


    // Decodes your encoded data to tree.
    public TreeNode deserialize(String data) {
        if (data.length() == 0) { return null; }
        String strs[] = data.split(",");
        Queue<TreeNode> queue = new LinkedList<>();
        TreeNode root = new TreeNode(Integer.parseInt(strs[0]));
        queue.add(root);
        int i = 1;
        while (!queue.isEmpty() && i < strs.length) {
            Queue<TreeNode> tmpQueue = new LinkedList<>();
            while (!queue.isEmpty()) {
                TreeNode node = queue.poll();
                if (!strs[i].equals("#")) {
                    node.left = new TreeNode(Integer.parseInt(strs[i]));
                    tmpQueue.add(node.left);
                }
                i++;
                if (i == strs.length) {
                    break;
                }
                if (!strs[i].equals("#")) {
                    node.right = new TreeNode((Integer.parseInt(strs[i])));
                    tmpQueue.add(node.right);
                }
                i++;
                if (i == strs.length) {
                    break;
                }
            }
            queue = tmpQueue;
        }
        return root;
    }
}