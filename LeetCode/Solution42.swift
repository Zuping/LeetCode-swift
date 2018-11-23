//
//  Solution42.swift
//  LeetCode
//
//  Created by zuping on 11/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution42: NSObject {
    func trap(_ height: [Int]) -> Int {
        guard height.count > 0 else { return 0 }
        var l = 0, r = height.count - 1
        var res = 0
        while l < r {
            let minimum = min(height[l], height[r])
            if height[l] == minimum {
                l += 1
                while l < r && height[l] < minimum {
                    res += minimum - height[l]
                    l += 1
                }
            } else {
                r -= 1
                while l < r && height[r] < minimum {
                    res += minimum - height[r]
                    r -= 1
                }
            }
        }
        return res
    }

    func trap_stack(_ height: [Int]) -> Int {
        guard height.count > 0 else { return 0 }
        var res = 0
        var stack = [Int]()
        var i = 0
        while i < height.count {
            while !stack.isEmpty && height[stack.last!] < height[i] {
                let top = stack.removeLast()
                if stack.isEmpty {
                    break
                }
                let height = min(height[i], height[stack.last!]) - height[top]
                let dist = i - stack.last! - 1
                res += height * dist
            }
            stack.append(i)
            i += 1
        }
        return res
    }
}
