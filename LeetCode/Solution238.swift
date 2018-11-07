//
//  Solution238.swift
//  LeetCode
//
//  Created by zuping on 11/4/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution238: NSObject {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else {
            return nums
        }
        var arr1 = Array(repeating: 1, count: nums.count)
        var arr2 = Array(repeating: 1, count: nums.count)
        for idx in 1 ..< nums.count {
            arr1[idx] = arr1[idx - 1] * nums[idx - 1]
        }
        for idx in (0 ..< nums.count - 1).reversed() {
            arr2[idx] = arr2[idx + 1] * nums[idx + 1]
        }
        var result = Array(repeating: 1, count: nums.count)
        for idx in 0 ..< nums.count {
            result[idx] = arr1[idx] * arr2[idx]
        }
        return result
    }

    // with no extra space
    func productExceptSelf2(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else { return nums }
        var result = Array(repeating: 1, count: nums.count)
        for idx in 1 ..< nums.count {
            result[idx] = result[idx - 1] * nums[idx - 1]
        }
        var tmp = 1
        for idx in (0 ..< nums.count - 1).reversed() {
            tmp *= nums[idx + 1]
            result[idx] = result[idx] * tmp
        }
        return result
    }
}
