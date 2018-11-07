//
//  solution162.swift
//  LeetCode
//
//  Created by zuping on 11/4/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class solution162: NSObject {
    func findPeakElement(_ nums: [Int]) -> Int {
        var l = 0, r = nums.count - 1
        while l < r {
            let mid = (l + r) / 2
            if nums[mid] < nums[mid + 1] {
                l = mid + 1
            } else {
                r = mid
            }
        }
        return l
    }
}
