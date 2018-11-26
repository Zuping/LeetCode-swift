//
//  Solution316.swift
//  LeetCode
//
//  Created by zuping on 11/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution316: NSObject {
    func removeDuplicateLetters(_ s: String) -> String {
        let sArr = s.utf8.map({ Int($0) })
        var counter = Array(repeating: 0, count: 128)
        for ch in sArr {
            counter[ch] += 1
        }
        var i = 0
        var stack = [Int]()
        var set = Set<Int>()
        while i < sArr.count {
            let ch = sArr[i]
            if !set.contains(ch) {
                while !stack.isEmpty && stack.last! > ch && counter[stack.last!] >= 1 {
                    let tmp = stack.removeLast()
                    set.remove(tmp)
                }
                set.insert(ch)
                stack.append(ch)
            }
            i += 1
            counter[ch] -= 1
        }
        let res = Array(stack.map({ Character(UnicodeScalar($0)!) }))
        return String(res)
    }
}
