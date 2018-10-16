//
//  Solution 268.swift
//  LeetCode
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution268: NSObject {
    func missingNumber(_ nums: [Int]) -> Int {
        let sum = (1 + nums.count) * nums.count / 2
        var ssum = 0
        for num in nums {
            ssum += num
        }
        return sum - ssum
    }
}
