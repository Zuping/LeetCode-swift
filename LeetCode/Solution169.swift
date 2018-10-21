//
//  Solution169.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution169: NSObject {
    func majorityElement(_ nums: [Int]) -> Int {
        var majority = -1
        var count = 0
        for num in nums {
            if count == 0 {
                majority = num
                count = 1
            } else {
                count += majority == num ? 1 : -1
            }
        }
        return majority
    }
}
