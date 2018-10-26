//
//  Solution5.swift
//  LeetCode
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution5: NSObject {
    func longestPalindrome(_ str: String) -> String {
        guard str.count > 0 else { return "" }
        let chars = Array(str)
        var dpArray: [[Bool]] = []
        for idx in 0 ..< chars.count {
            dpArray.append(Array(repeating: false, count: chars.count))
            dpArray[idx][idx] = true
        }
        var left = 0, right = 0
        for idx in 0 ..< chars.count {
            for jdx in 0 ..< idx {
                if chars[idx] != chars[jdx] { continue }
                if !dpArray[jdx + 1][idx - 1] && idx != jdx + 1 { continue }
                dpArray[jdx][idx] = true
                if idx - jdx + 1 > right - left + 1 {
                    left = jdx
                    right = idx
                }
            }
        }
        return String(chars[left ... right])
    }

    func longestPalindromeTLE(_ str: String) -> String {
        guard str.count > 0 else { return "" }
        let chars = Array(str)
        var result: String = ""
        for center in 0 ... str.count * 2 - 1 {
            var left = center / 2
            var right = left + center % 2
            while left >= 0 && right < str.count && chars[left] == chars[right] {
                left -= 1
                right += 1
            }
            if right - left - 1 > result.count {
                result = String(chars[left + 1 ... right - 1])
            }
        }
        return result
    }
}
