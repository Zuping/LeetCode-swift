//
//  SolutionEasy.swift
//  LeetCode
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa


class SolutionEasy: NSObject {
    // 2. Add Two Numbers
    func addTwoNumbers1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil && l2 != nil else { return nil }
        var carry = 0
        var p1 = l1, p2 = l2
        let dummyHead = ListNode(0)
        var node: ListNode?, pre = dummyHead
        while p1 != nil || p2 != nil || carry > 0 {
            var tmp = carry
            if p1 != nil {
                tmp += p1!.val
                p1 = p1?.next
            }
            if p2 != nil {
                tmp += p2!.val
                p2 = p2?.next
            }
            node = ListNode(tmp % 10)
            pre.next = node
            carry = tmp / 10
            pre = node!
        }
        return dummyHead.next
    }

    // LeetCode 20. Valid Parentheses
    func isValid(_ str: String) -> Bool {
        guard str.count > 0 else { return true }
        var stack: [Character] = []
        let leftParentheses = Array("{[(")
        for char in str {
            if leftParentheses.contains(char) {
                stack.append(char)
                continue
            }
            if stack.isEmpty { return false }
            let last = stack.last!
            if char == ")" {
                if last != "(" {
                    return false
                } else {
                    stack.removeLast()
                }
            }
            if char == "]" {
                if last != "[" {
                    return false
                } else {
                    stack.removeLast()
                }
            }
            if char == "}" {
                if last != "{" {
                    return false
                } else {
                    stack.removeLast()
                }
            }
        }
        return stack.count == 0
    }

    // LeetCode 38. Count and Say
    func countAndSay(_ num: Int) -> String {
        guard num > 0 else { return "" }
        var array = ["1"]
        for _ in 0 ..< 30 {
            let chars = Array(array.last!)
            var str = ""
            var idx = 0
            while idx < chars.count {
                var cnt = 0
                let char = chars[idx]
                while idx < chars.count && chars[idx] == char {
                    idx += 1
                    cnt += 1
                }
                str.append("\(cnt)\(char)")
            }
            array.append(String(str))
        }
        return array[num - 1]
    }

    // 61. Rotate List
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil else { return nil }
        var count = 0
        var node = head
        while node != nil {
            count += 1
            node = node?.next
        }
        let k = k % count
        if k == 0 { return head }
        count = count - k
        node = head
        var pre: ListNode?
        while count > 0 {
            pre = node
            node = node?.next
            count -= 1
        }
        let newHead = node
        pre?.next = nil
        while node?.next != nil {
            node = node?.next
        }
        node?.next = head

        return newHead
    }

    // 66. Plus One
    func plusOne(_ digits: [Int]) -> [Int] {
        var result: [Int] = []
        guard digits.count > 0 else { return result }
        var carry = 1
        for idx in (0 ..< digits.count).reversed() {
            let tmp = carry + digits[idx]
            result.append(tmp % 10)
            carry = tmp / 10
        }
        if carry > 0 {
            result.append(carry)
        }
        return result.reversed()
    }

    // LeetCode 88. Merge Sorted Array
    func merge(_ nums1: inout [Int], _ mVal: Int, _ nums2: [Int], _ nVal: Int) {
        var ptr1 = mVal - 1, ptr2 = nVal - 1
        var idx = mVal + nVal - 1
        while idx >= 0 {
            if ptr1 < 0 {
                while ptr2 >= 0 {
                    nums1[idx] = nums2[ptr2]
                    idx -= 1
                    ptr2 -= 1
                }
                break
            }
            if ptr2 < 0 {
                break
            }
            if nums1[ptr1] > nums2[ptr2] {
                nums1[idx] = nums1[ptr1]
                ptr1 -= 1
            } else {
                nums1[idx] = nums2[ptr2]
                ptr2 -= 1
            }
            idx -= 1
        }
    }

    // LeetCode 168. Excel Sheet Column Title
    func convertToTitle(_ num: Int) -> String {
        let chars = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var result = ""
        var num = num
        while num != 0 {
            result.append(chars[(num - 1) % 26])
            num = (num - 1) / 26
        }
        return String(result.reversed())
    }

    func convertToTitle1(_ num: Int) -> String {
        let chars = Array("ZABCDEFGHIJKLMNOPQRSTUVWXY")
        var result = ""
        var num = num
        while num != 0 {
            result.append(chars[num % 26])
            var mod = num % 26
            if mod == 0 {
                mod = 26
            }
            num = (num - mod) / 26
        }
        return String(result.reversed())
    }

    // 189. Rotate Array
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 0  else { return }
        let k = k % nums.count
        if k == 0 { return }

        for idx in 0 ..< (nums.count - k) / 2 {
            let tmp = nums[idx]
            nums[idx] = nums[nums.count - k - idx - 1]
            nums[nums.count - k - idx - 1] = tmp
        }

        for idx in 0 ..< k / 2 {
            let tmp = nums[nums.count - k + idx]
            nums[nums.count - k + idx] = nums[nums.count - idx - 1]
            nums[nums.count - idx - 1] = tmp
        }

        nums.reverse()
    }

    // 171. Excel Sheet Column Number
    func titleToNumber(_ str: String) -> Int {
        let chars = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let strChars = Array(str)
        var num = 0
        var base = 1
        for idx in (0 ..< str.count).reversed() {
            let index = chars.firstIndex(of: strChars[idx])!
            num += (index + 1) * base
            base *= 26
        }
        return num
    }

    // 283. Move Zeroes
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 0 else { return }
        var index = 0
        for idx in 0 ..< nums.count {
            if nums[idx] != 0 {
                nums[index] = nums[idx]
                index += 1
            }
        }
        for idx in index ..< nums.count {
            nums[idx] = 0
        }
    }

    // 369. Plus One Linked List
    func plusOne(_ head: ListNode?) -> ListNode? {
        var node = head
        var pre: ListNode?
        // reverse list
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }

        node = pre
        var carry = 1
        while carry > 0 && node != nil {
            let tmp = node!.val + carry
            node?.val = tmp % 10
            carry = tmp / 10
            node = node?.next
        }

        if carry > 0 {
            node = ListNode(carry)
            head?.next = node
        }

        node = pre
        pre = nil
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }

        return pre
    }

    // 415. Add Strings
    func addStrings(_ num1: String, _ num2: String) -> String {
        guard num1.count > 0 && num2.count > 0 else { return "" }
        let arr1 = num1.reversed().map({Int(String($0))})
        let arr2 = num2.reversed().map({Int(String($0))})
        var result: [Int] = []
        var idx = 0
        var carry = 0
        while idx <= num1.count || idx <= num2.count {
            var tmp = carry
            if idx < num1.count {
                tmp += arr1[idx]!
            }
            if idx < num2.count {
                tmp += arr2[idx]!
            }
            result.append(tmp % 10)
            carry = tmp / 10
            idx += 1
        }
        var string = ""
        for num in result.reversed() {
            if num == 0 && string.count == 0 {
                continue
            }
            string.append(String(num))
        }
        return string.count > 0 ? string : "0"
    }

    // 445. Add Two Numbers II
    func addTwoNumbers2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil && l2 != nil else { return nil }
        var p1 = reverLinkedList(l1), p2 = reverLinkedList(l2)
        let dummyHead = ListNode(0)
        var pre = dummyHead, node: ListNode?
        var carry = 0
        while carry > 0 || p1 != nil || p2 != nil {
            var tmp = carry
            if p1 != nil {
                tmp += p1!.val
                p1 = p1?.next
            }
            if p2 != nil {
                tmp += p2!.val
                p2 = p2?.next
            }
            node = ListNode(tmp % 10)
            pre.next = node
            pre = node!
            carry = tmp / 10
        }
        return reverLinkedList(dummyHead.next)
    }

    func reverLinkedList(_ head: ListNode?) -> ListNode? {
        var node = head
        var pre: ListNode?
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }
        return pre
    }
}
