//
//  Solution31.swift
//  LeetCode
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution31: NSObject {
    func nextPermutation(_ nums: inout [Int]) {
        guard nums.count > 0 else {
            return
        }
        var pivot = -1
        for idx in (1..<nums.count).reversed() where nums[idx] > nums[idx - 1] {
            pivot = idx
            break
        }
        if pivot == -1 {
            nums.reverse()
            return
        }
        for idx in (pivot..<nums.count).reversed() where nums[idx] > nums[pivot - 1] {
            nums.swapAt(pivot - 1, idx)
            break
        }
        for idx in 0..<(nums.count - pivot)/2 {
            nums.swapAt(pivot + idx, nums.count - 1 - idx)
        }
    }
}
