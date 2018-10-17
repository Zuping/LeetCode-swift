//
//  Solution503.swift
//  LeetCode
//
//  Created by zuping on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution503: NSObject {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        if nums.count == 0 {
            return []
        }
        var result: [Int] = Array(repeating: Int.max, count: nums.count)
        var stack: [Int] = []
        for idx in (0...nums.count - 1).reversed() {
            while !stack.isEmpty && nums[idx] >= stack.last! {
                stack.removeLast()
            }
            result[idx] = stack.isEmpty ? Int.max : stack.last!
            stack.append(nums[idx])
        }
        stack.removeAll()
        for idx in 0..<nums.count {
            if stack.isEmpty || nums[idx] > stack.last! {
                stack.append(nums[idx])
            }

            if result[idx] == Int.max  && nums[idx] < stack.last! {
                for iidx in (0..<stack.count).reversed() {
                    if nums[idx] < stack[iidx] {
                        result[idx] = stack[iidx]
                    } else {
                        break
                    }
                }
            }
        }
        for idx in 0..<result.count where result[idx] == Int.max {
            result[idx] = -1
        }

        return result
    }

    func nextGreaterElements1(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: -1, count: nums.count)
        var stack: [Int] = []
        for idx in 0..<nums.count * 2 {
            let num = nums[idx % nums.count]
            while !stack.isEmpty && nums[stack.last!] < num {
                result[stack.last!] = num
                stack.removeLast()
            }
            if idx < nums.count {
                stack.append(idx)
            }
        }
        return result
    }
}
