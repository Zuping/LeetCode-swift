//
//  SolutionSlidingWindow.swift
//  LeetCode
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionSlidingWindow: NSObject {
    // 904. Fruit Into Baskets
    func totalFruit(_ tree: [Int]) -> Int {
        guard tree.count > 0 else {
            return 0
        }
        var map: [Int: Int] = [:]
        var l = 0, r = 0
        var maximum = 0
        for i in 0 ..< tree.count {
            let type = tree[i]
            if l == r {
                map[type] = 1
                r += 1
                continue
            }
            
            if let count = map[type] {
                map[type] = count + 1
                r += 1
            } else {
                if map.count == 2 {
                    maximum = max(maximum, r - l)
                    while map.count == 2 {
                        let tmpType = tree[l]
                        map[tmpType] = map[tmpType]! - 1
                        if map[tmpType] == 0 {
                            map.removeValue(forKey: tmpType)
                        }
                        l += 1
                    }
                } 
                map[type] = 1
                r += 1
            }
        }
        maximum = max(maximum, r - l)
        return maximum
    }
    
    // 159. Longest Substring with At Most Two Distinct Characters
    func lengthOfLongestSubstringTwoDistinct(_ s: String) -> Int {
        let sArr = s.utf8.map({ Int($0) })
        var chars = Array(repeating: 0, count: 128)
        var l = 0, r = 0, count = 0, maxLen = 0
        for i in 0 ..< sArr.count {
            let char = sArr[i]
            chars[char] += 1
            if chars[char] == 1 {
                count += 1
            }
            while count > 2 {
                let tmpChar = sArr[l]
                chars[tmpChar] -= 1
                if chars[tmpChar] == 0 {
                    count -= 1
                }
                l += 1
            }
            r += 1
            maxLen = max(maxLen, r - l)
        }
        return maxLen
    }
    
    // 340. Longest Substring with At Most K Distinct Characters
    func lengthOfLongestSubstringKDistinct(_ s: String, _ k: Int) -> Int {
        let sArr = s.utf8.map({ Int($0) })
        var chars = Array(repeating: 0, count: 128)
        var l = 0, r = 0, count = 0, maxLen = 0
        for i in 0 ..< sArr.count {
            let char = sArr[i]
            chars[char] += 1
            if chars[char] == 1 {
                count += 1
            }
            while count > k {
                let tmpChar = sArr[l]
                chars[tmpChar] -= 1
                if chars[tmpChar] == 0 {
                    count -= 1
                }
                l += 1
            }
            r += 1
            maxLen = max(maxLen, r - l)
        }
        return maxLen
    }

}
