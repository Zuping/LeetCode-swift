//
//  Solution301.swift
//  LeetCode
//
//  Created by zuping on 11/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution301: NSObject {
    func removeInvalidParentheses(_ s: String) -> [String] {
        var chars = Array(s)
        var l = 0, r = 0
        checkValid(chars, &l, &r)
        var result = [String]()
        var set = Set<String>()
        helper(&chars, l, r, &result, &set)
        return result
    }

    func checkValid(_ chars: [Character], _ l: inout Int, _ r: inout Int) -> Bool {
        for ch in chars {
            if ch == "(" {
                l += 1
            } else if ch == ")" {
                if l > 0 {
                    l -= 1
                } else {
                    r += 1
                }
            }
        }
        return l == 0 && r == 0
    }

    func helper(_ chars: inout [Character], _ l: Int, _ r: Int,
                _ result: inout [String], _ set: inout Set<String>) {
        let str = String(chars)
        if set.contains(str) { return }
        set.insert(str)
        if l == 0 && r == 0 {
            // check the current string, if it's valid,
            // add it to the result array
            var l = 0, r = 0
            if checkValid(chars, &l, &r) && !result.contains(str) {
                result.append(str)
            }

        }
        if l > 0 {
            for i in 0 ..< chars.count {
                if chars[i] == "(" {
                    chars.remove(at: i)
                    helper(&chars, l - 1, r, &result, &set)
                    chars.insert("(", at: i)
                }
            }
        } else {
            for i in 0 ..< chars.count {
                if chars[i] == ")" {
                    chars.remove(at: i)
                    helper(&chars, l, r - 1, &result, &set)
                    chars.insert(")", at: i)
                }
            }
        }
    }
}
