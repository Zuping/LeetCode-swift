//
//  Solution18.swift
//  LeetCode
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution18: NSObject {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        guard nums.count > 3 else {
            return result
        }
        let nums = nums.sorted()
        for idx in 0 ..< nums.count - 3 {
            if idx > 0 && nums[idx] == nums[idx - 1] { continue }
            for jdx in idx + 1 ..< nums.count - 2 {
                if jdx > idx + 1 && nums[jdx] == nums[jdx - 1] { continue }
                for kdx in jdx + 1 ..< nums.count - 1 {
                    if kdx > jdx + 1 && nums[kdx] == nums[kdx - 1] { continue}
                    let tmp = target - (nums[idx] + nums[jdx] + nums[kdx])
                    if binarySearch(nums, kdx + 1, nums.count - 1, tmp) {
                        result.append([nums[idx], nums[jdx], nums[kdx], tmp])
                    }
                }
            }
        }
        return result
    }
    func binarySearch(_ nums: [Int], _ left: Int, _ right: Int, _ target: Int) -> Bool {
        var left = left, right = right
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return true
            }
            if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return false
    }
}
