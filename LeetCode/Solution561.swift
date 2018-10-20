//
//  Solution561.swift
//  LeetCode
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution561: NSObject {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var sum = 0
        for idx in stride(from: 0, to: nums.count, by: 2) {
            sum += nums[idx]
        }
        return sum
    }
}
