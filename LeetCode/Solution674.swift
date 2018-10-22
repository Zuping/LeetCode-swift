//
//  Solution674.swift
//  LeetCode
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution674: NSObject {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var result = 1, tmpResult = 1
        for idx in 0..<nums.count - 1 {
            if nums[idx] < nums[idx + 1] {
                tmpResult += 1
            } else {
                tmpResult = 1
            }
            result = max(tmpResult, result)
        }
        return result
    }
}
