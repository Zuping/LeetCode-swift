//
//  DataModel.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    class func buildList(_ nums: [Int]) -> ListNode? {
        guard nums.count > 0 else {
            return nil
        }
        let head = ListNode(nums[0])
        var node = head
        for idx in 1 ..< nums.count {
            node.next = ListNode(nums[idx])
            node = node.next!
        }
        return head
    }

    class func isEqualLinkedList(_ head1: ListNode, _ head2: ListNode) -> Bool {
        var node1: ListNode? = head1
        var node2: ListNode? = head2
        while node1 != nil && node2 != nil {
            if node1?.val != node2?.val {
                return false
            }
            node1 = node1?.next
            node2 = node2?.next
        }
        if (node1 != nil && head2 == nil) && (node1 == nil && head2 != nil) {
            return false
        }
        return true
    }
}
