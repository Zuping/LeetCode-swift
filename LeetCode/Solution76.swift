//
//  Solution76.swift
//  LeetCode
//
//  Created by zuping on 11/4/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution76: NSObject {
    func minWindow(_ s: String, _ t: String) -> String {
        let tt = Array(t.utf16).map { Int($0) }
        let ss = Array(s.utf16).map { Int($0) }
        var dict = Array(repeating: 0, count: 128)
        for code in tt {
            dict[code] += 1
        }
        var count = 0, left = 0, start = 0, minLen = Int.max, r = 0
        let len = t.count

        while r < ss.count {
            if dict[ss[r]] > 0 {
                count += 1
            }
            dict[ss[r]] -= 1
            r += 1
            while count == len {
                if r - left < minLen {
                    minLen = r - left
                    start = left
                }
                dict[ss[left]] += 1
                if dict[ss[left]] > 0 {
                    count -= 1
                }
                left += 1
            }
        }

        if minLen > s.count {
            return ""
        }

        let index1 = s.index(s.startIndex, offsetBy: start)
        let index2 = s.index(s.startIndex, offsetBy: start + minLen)
        return String(s[index1 ..< index2])
    }

}
