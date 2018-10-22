//
//  Solution523.swift
//  LeetCode
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution523: NSObject {
    func checkSubarraySum(_ nums: [Int], _ kFactor: Int) -> Bool {
        guard nums.count > 1 else {
            return false
        }
        var dict: [Int: Int] = [0: -1]
        var sum = 0
        for idx in 0..<nums.count {
            sum += nums[idx]
            let remainder = kFactor != 0 ? sum % kFactor : sum
            if let pre = dict[remainder] {
                if idx - pre > 1 { return true }
            } else {
                dict[remainder] = idx
            }
        }
        return false
    }
}
