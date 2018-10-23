//
//  Solution45.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution45: NSObject {
    func jump(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var dpArray = Array(repeating: Int.max - 10, count: nums.count)
        dpArray[0] = 0
        for idx in 0..<nums.count - 1 where nums[idx] > 0 {
            for iidx in idx + 1...min(idx + nums[idx], nums.count - 1) {
                if dpArray[iidx] > dpArray[idx] + 1 {
                    dpArray[iidx] = dpArray[idx] + 1
                }
            }
            if dpArray.last != Int.max - 10 {
                break
            }
        }
        return dpArray.last!
    }

    func jump2(_ nums: [Int]) -> Int {
        var cnt = 0, idx = 0
        var cur = 0, pre = 0
        while cur < nums.count - 1 {
            cnt += 1
            pre = cur
            while idx <= pre {
                cur = max(cur, idx + nums[idx])
                idx += 1
            }
        }
        return cnt
    }
    func jump3(_ nums: [Int]) -> Int {
        var cnt = 0
        var cur = 0, pre = 0
        for idx in 0..<nums.count - 1 {
            cur = max(cur, idx + nums[idx])
            if idx == pre {
                cnt += 1
                pre = cur
            }
        }
        return cnt
    }
}
