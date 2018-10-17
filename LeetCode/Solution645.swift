//
//  Solution645.swift
//  LeetCode
//
//  Created by Zuping Li on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution645: NSObject {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var count = Array(repeating: 1, count: nums.count)
        for num in nums {
            count[num - 1] -= 1
        }
        var dup = 0, miss = 0
        for idx in 0..<count.count {
            if count[idx] == 1 {
                miss = idx + 1
            }
            if count[idx] == -1 {
                dup = idx + 1
            }
        }
        return [dup, miss]
    }
}
