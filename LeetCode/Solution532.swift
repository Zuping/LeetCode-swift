//
//  Solution532.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution532: NSObject {
    func findPairs(_ nums: [Int], _ kFactor: Int) -> Int {
        guard nums.count > 0 && kFactor >= 0 else {
            return 0
        }
        let set = Set(nums)
        var result = 0
        let nums = nums.sorted()
        for idx in 0..<nums.count - 1 where idx == 0 || nums[idx] != nums[idx - 1] {
            if kFactor == 0 {
                if nums[idx] == nums[idx + 1] {
                    result += 1
                }
            } else if set.contains(nums[idx] + kFactor) {
                result += 1
            }
        }
        return result
    }
}
