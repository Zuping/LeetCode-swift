//
//  Solution215.swift
//  LeetCode
//
//  Created by zuping on 11/1/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution215: NSObject {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var nums = nums
        let targetIndex = nums.count - k
        var left = 0, right = nums.count - 1
        while true {
            let pivot = quickSort(&nums, left: left, right: right)
            if pivot == targetIndex {
                return nums[pivot]
            }
            if pivot < targetIndex {
                left = pivot + 1
            } else {
                right = pivot - 1
            }
        }
    }

    func quickSort(_ num: inout [Int], left: Int, right: Int) -> Int {
        let pivot = num[left]
        var l = left + 1, r = right
        while l <= r {
            if num[l] > pivot && num[r] < pivot {
                let tmp = num[l]
                num[l] = num[r]
                num[r] = tmp
                l += 1
                r -= 1
            }
            if num[l] <= pivot {
                l += 1
            }
            if num[r] >= pivot {
                r -= 1
            }
        }
        let tmp = num[r]
        num[r] = num[left]
        num[left] = tmp
        return r
    }
}
