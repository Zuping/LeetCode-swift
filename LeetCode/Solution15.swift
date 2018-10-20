//
//  Solution15.swift
//  LeetCode
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution15: NSObject {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        guard nums.count >= 3 else {
            return result
        }
        let nums = nums.sorted()
        for aIdx in 0..<nums.count - 2 where aIdx == 0 || (nums[aIdx - 1] != nums[aIdx]) {
            for bIdx in aIdx + 1..<nums.count - 1 where bIdx == aIdx + 1 || (nums[bIdx - 1] != nums[bIdx]) {
                let val = -(nums[aIdx] + nums[bIdx])
                if binarySearch(nums, bIdx + 1, nums.count - 1, val) {
                    result.append([nums[aIdx], nums[bIdx], val])
                }
            }
        }
        return result
    }
    private func binarySearch(_ nums: [Int], _ left: Int, _ right: Int, _ target: Int) -> Bool {
        var left = left, right = right
        while left <= right {
            let mid = (left + right)/2
            if nums[mid] == target {
                return true
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return false
    }
}
