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
}
