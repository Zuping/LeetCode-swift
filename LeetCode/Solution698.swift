//
//  Solution698.swift
//  LeetCode
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution698: NSObject {
    func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {
        let sum = nums.reduce(0, +)
        if sum % k != 0 { return false }
        let target = sum / k
        var nums = Array(nums.sorted().reversed())
        for _ in 0 ..< k - 1 {
            if !helper(&nums, 0, target) {
                return false
            }
        }
        return true
    }
    private func helper(_ nums: inout [Int], _ idx: Int, _ target: Int) -> Bool {
        if (target == 0) { return true }
        var i = idx
        var found = false
        while i < nums.count {
            let val = nums[i]
            nums.remove(at: i)
            if helper(&nums, i, target - val) {
                found = true
                break
            }
            nums.insert(val, at: i)
            i += 1
        }
        return found
    }
    
    // 416. Partition Equal Subset Sum
    func canPartition(_ nums: [Int]) -> Bool {
        let sum = nums.reduce(0, +)
        let nums = nums.sorted()
        if sum % 2 != 0 { return false }
        let target = sum / 2
        var dp = Array(repeating: false, count: target + 1)
        dp[0] = true
        for num in nums {
            for i in (num ... target).reversed() {
                dp[i] = dp[i] || dp[i - num]
            }
        }
        return dp[target]
    }
}
