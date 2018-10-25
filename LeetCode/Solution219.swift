//
//  Solution219.swift
//  LeetCode
//
//  Created by zuping on 10/23/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution219: NSObject {
    func containsNearbyDuplicate(_ nums: [Int], _ kFactor: Int) -> Bool {
        guard nums.count > 1 else { return false }
        var indices = [Int](0..<nums.count)
        indices.sort(by: { aVal, bVal in nums[aVal] < nums[bVal] })
        for idx in 0..<indices.count - 1 where nums[indices[idx]] == nums[indices[idx + 1]] {
            if abs(indices[idx] - indices[idx + 1]) <= kFactor {
                return true
            }
        }
        return false
    }
}
