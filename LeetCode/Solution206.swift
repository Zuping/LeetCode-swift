//
//  Solution206.swift
//  LeetCode
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution206: NSObject {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return head
        }
        var pre = head!, cur = head?.next
        head?.next = nil
        while cur != nil {
            let next = cur!.next
            cur!.next = pre
            pre = cur!
            cur = next
        }
        return pre
    }
}
