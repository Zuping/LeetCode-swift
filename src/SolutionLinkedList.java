import java.util.Random;

// Definition for singly-linked list.
class ListNode {
    int val;
    ListNode next;
    ListNode(int x) {
        val = x;
        next = null;
    }
}


//Definition for singly-linked list with a random pointer.
class RandomListNode {
    int label;
    RandomListNode next, random;
    RandomListNode(int x) { this.label = x; }
}

// Definition for a Node.
class Node {
    public int val;
    public Node prev;
    public Node next;
    public Node child;

    public Node() {}

    public Node(int _val,Node _prev,Node _next,Node _child) {
        val = _val;
        prev = _prev;
        next = _next;
        child = _child;
    }
}



public class SolutionLinkedList {
    public static void main(String[] args) {
        SolutionLinkedList solution = new SolutionLinkedList();

//        ListNode p = new ListNode(1);
//        p.next = p;
//        System.out.println(solution.hasCycle(p));

//        ListNode p1 = new ListNode(1);
//        ListNode p2 = new ListNode(2);
//        p1.next = p2;
//        p2.next = p1;
//        solution.detectCycle(p1);

//        RandomListNode p1 = new RandomListNode(-1);
//        RandomListNode p2 = new RandomListNode(1);
//        p1.next = p2;
//        solution.copyRandomList(p1);

        Node node1 = new Node();
        node1.val = 1;
        Node node2 = new Node();
        node2.val = 2;
        Node node3 = new Node();
        node3.val = 3;
        Node node4 = new Node();
        node4.val = 4;
        Node node5 = new Node();
        node5.val = 5;
        Node node6 = new Node();
        node6.val = 6;
        Node node7 = new Node();
        node7.val = 7;

        node5.next = node2;
        node2.prev = node5;

        node2.next = node7;
        node7.prev = node2;

        node1.child = node3;
        node3.next = node4;
        node4.prev = node3;
        node3.child = node5;
        solution.flatten(node1);
    }

    public boolean hasCycle(ListNode head) {
        ListNode dummy = new ListNode(-1);
        dummy.next = head;
        ListNode p1 = dummy, p2 = dummy;
        while (p1 != null && p2.next != null) {
            if (p1 == p2 && p1 != dummy) {
                return true;
            }
            p1 = p1.next;
            p2 = p2.next.next;
            if (p2 == null) {
                break;
            }
        }
        return false;
    }

    // 142. Linked List Cycle II
    public ListNode detectCycle(ListNode head) {
        if (head == null) { return null; }
        ListNode dummy = new ListNode(-1);
        dummy.next = head;
        ListNode p1 = dummy.next;
        ListNode p2 = p1.next;
        while (p1 != p2) {
            if (p2 == null || p2.next == null) {
                return null;
            }
            p1 = p1.next;
            p2 = p2.next.next;
        }
        p1 = dummy;
        while (p1 != p2) {
            p1 = p1.next;
            p2 = p2.next;
        }
        return p1;
    }

    // 138. Copy List with Random Pointer
    public RandomListNode copyRandomList(RandomListNode head) {
        if (head == null) { return head; }
        RandomListNode cur = head;
        while (cur != null) {
            RandomListNode newNode = new RandomListNode(cur.label);
            newNode.next = cur.next;
            cur.next = newNode;
            cur = newNode.next;
        }
        cur = head;
        while (cur != null) {
            if (cur.random != null) {
                cur.next.random = cur.random.next;
            }
            cur = cur.next.next;
        }
        cur = head;
        RandomListNode newHead = cur.next;
        while (cur != null) {
            RandomListNode newNode = cur.next;
            cur.next = cur.next.next;
            cur = cur.next;
            if (newNode.next != null) {
                newNode.next = newNode.next.next;
            }
        }
        return newHead;
    }

    // 430. Flatten a Multilevel Doubly Linked List
    public Node flatten(Node head) {
        if (head == null) { return null; }
        flattenHelper(head);
        return head;
    }

    private Node flattenHelper(Node head) {
        Node node = head;
        Node pre = null;
        while (node != null) {
            Node next = node.next;
            if (node.child != null) {
                Node end = flattenHelper(node.child);

                node.next = node.child;
                node.next.prev = node;

                if (next != null) {
                    end.next = next;
                    end.next.prev = end;
                }

                node.child = null;
            }
            pre = node;
            node = next;
        }
        return pre;
    }
}
