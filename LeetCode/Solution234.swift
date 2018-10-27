//
//  Solution234.swift
//  LeetCode
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution234: NSObject {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard head != nil || head?.next != nil else {
            return true
        }
        var count = 0, node = head
        while node != nil {
            node = node?.next
            count += 1
        }
        node = head
        for _ in 0 ..< (count + 1) / 2 {
            node = node?.next
        }
        
        var newHead = node
        var pre: ListNode? = nil
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }
        newHead = pre
        node = head
        while newHead != nil {
            if newHead?.val != node?.val {
                return false
            }
            newHead = newHead?.next
            node = node?.next
        }
        return true
    }
}
