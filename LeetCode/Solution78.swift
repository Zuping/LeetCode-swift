//
//  Solution78.swift
//  LeetCode
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution78: NSObject {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        guard nums.count > 0 else { return result }
        var count = 1
        for _ in 0 ..< nums.count { count *= 2 }
        for idx in 0 ..< count {
            var tmpRes: [Int] = []
            for iidx in 0 ..< nums.count {
                if ((idx >> iidx) & 1) > 0 {
                    tmpRes.append(nums[iidx])
                }
            }
            result.append(tmpRes)
        }
        return result
    }
}
