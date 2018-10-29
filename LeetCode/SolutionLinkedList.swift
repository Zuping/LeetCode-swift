//
//  SolutionLinkedList.swift
//  LeetCode
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionLinkedList: NSObject {
    // 21. Merge Two Sorted Lists
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil { return nil }
        var list1 = list1, list2 = list2
        let head = ListNode(0)
        var ptr = head
        while list1 != nil || list2 != nil {
            if list1 == nil {
                ptr.next = list2
                break
            }
            if list2 == nil {
                ptr.next = list1
                break
            }
            if list1!.val < list2!.val {
                ptr.next = list1
                list1 = list1!.next
            } else {
                ptr.next = list2
                list2 = list2!.next
            }
            ptr = ptr.next!
        }
        return head.next
    }
}
