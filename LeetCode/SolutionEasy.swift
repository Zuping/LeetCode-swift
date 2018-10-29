//
//  SolutionEasy.swift
//  LeetCode
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionEasy: NSObject {
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
}
