//
//  Solution153.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution153: NSObject {
    func findMin(_ nums: [Int]) -> Int {
        var minimun = Int.max
        var left = 0, right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[left] <= nums[mid] {
                // left ... mid is sorted
                minimun = min(minimun, nums[left])
                left = mid + 1
            } else {
                // mid ... right is sorted
                minimun = min(minimun, nums[mid])
                right = mid - 1
            }
        }
        return minimun
    }
}
