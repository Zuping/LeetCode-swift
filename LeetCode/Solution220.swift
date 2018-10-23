//
//  Solution220.swift
//  LeetCode
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution220: NSObject {
    func containsNearbyAlmostDuplicate(_ nums: [Int], _ kVal: Int, _ tVal: Int) -> Bool {
        guard nums.count > 1 && kVal > 0 else { return false }
        var indices = [Int](0..<nums.count)
        indices.sort(by: { aVal, bVal in nums[aVal] < nums[bVal]})
        for idx in 0..<indices.count {
            let aVal = nums[indices[idx]]
            for iidx in idx + 1..<indices.count {
                let bVal = nums[indices[iidx]]
                let diffVal = abs(aVal - bVal)
                let diffIndex = abs(indices[iidx] - indices[idx])
                if diffVal > tVal {
                    break
                }
                if diffIndex <= kVal {
                    return true
                }
            }
        }
        return false
    }
}
