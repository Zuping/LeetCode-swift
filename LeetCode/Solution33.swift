//
//  Solution33.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution33: NSObject {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[left] <= nums[mid] {
                // left ... mid is sorted
                if nums[left] <= target && target < nums[mid] {
                    // target is in left ... mid
                    right = mid - 1
                } else {
                    // target is in mid ... right
                    left = mid + 1
                }
            } else {
                // mid ... right is sorted
                if nums[mid] < target && target <= nums[right] {
                    // target is in mid ... right
                    left = mid + 1
                } else {
                    // target is in left ... mid - 1
                    right = mid - 1
                }
            }
        }
        return -1
    }
}
