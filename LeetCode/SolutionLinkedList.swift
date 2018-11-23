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

    // 23. Merge k Sorted Lists
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var heap = lists
        for idx in (0 ..< heap.count).reversed() {
            if heap[idx] == nil {
                heap.remove(at: idx)
            }
        }
        guard heap.count > 0 else { return nil }
        heapify(&heap)
        let dummyHead = ListNode(-1)
        var pre = dummyHead
        while !heap.isEmpty {
            let next = heap[0]
            pre.next = next
            pre = next!
            heap[0] = heap[0]?.next
            if heap[0] != nil {
                siftDown(&heap, 0)
            } else {
                heap.removeFirst()
                heapify(&heap)
            }
        }
        return dummyHead.next
    }

    func heapify(_ heap: inout [ListNode?]) {
        guard heap.count > 1 else {
            return
        }
        for idx in (0 ..< heap.count / 2).reversed() {
            siftDown(&heap, idx)
        }
    }

    func siftDown(_ heap: inout [ListNode?], _ i: Int) {
        var i = i
        while i < heap.count / 2 {
            var next = i * 2 + 1
            if next + 1 < heap.count && heap[next + 1]!.val < heap[next]!.val {
                next = next + 1
            }
            if heap[i]!.val < heap[next]!.val {
                break
            } else {
                heap.swapAt(i, next)
                i = next
            }
        }
    }

    // 24. Swap Nodes in Pairs
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        let dummyHead = ListNode(-1)
        dummyHead.next = head
        var i = 0
        var pre: ListNode? = dummyHead, cur: ListNode? = dummyHead
        while cur?.next != nil {
            i += 1
            cur = cur?.next
            if i % 2 == 0 {
                // reverse pair
                let next = cur?.next
                cur?.next = pre?.next
                pre?.next?.next = next
                pre?.next = cur
                pre = cur?.next
                cur = pre
            }
        }
        return dummyHead.next
    }

    // 25. Reverse Nodes in k-Group
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard let head = head else { return nil }
        let dummy = ListNode(-1)
        dummy.next = head
        var pre: ListNode? = dummy
        var cur: ListNode? = pre
        var i = 0
        while cur?.next != nil {
            i += 1
            cur = cur!.next
            if i % k == 0 {
                pre = reverseHelper(pre, cur!.next, k)
                cur = pre
            }
        }
        return dummy.next
    }

    func reverseHelper(_ start: ListNode?, _ end: ListNode?, _ k: Int) -> ListNode? {
        var pre = start?.next, cur = pre?.next
        var i = 1
        while i < k {
            i += 1
            pre?.next = cur?.next
            cur?.next = start?.next
            start?.next = cur
            cur = pre?.next
        }
        return pre
    }

    // 92. Reverse Linked List II
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        guard let head = head else { return nil }
        if m == n { return head }
        let dummyHead = ListNode(-1)
        dummyHead.next = head
        var i = 0
        var node: ListNode? = dummyHead
        var start: ListNode?
        while node != nil {
            i += 1
            if i == m {
                start = node
            }
            node = node?.next
            if i == n {
                let pre = start?.next
                var cur = pre?.next
                for _ in 0 ..< n - m {
                    let next = cur?.next
                    cur?.next = start?.next
                    start?.next = cur
                    pre?.next = next
                    cur = next
                }
                break
            }
        }
        return dummyHead.next
    }
}
