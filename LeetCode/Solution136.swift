//
//  Solution136.swift
//  LeetCode
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution136: NSObject {
    func singleNumber(_ nums: [Int]) -> Int {
        var res = 0
        for num in nums {
            res ^= num
        }
        return res
    }
}
