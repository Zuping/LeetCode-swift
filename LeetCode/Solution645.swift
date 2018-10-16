//
//  Solution645.swift
//  LeetCode
//
//  Created by Zuping Li on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution645: NSObject {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var count = Array(repeating: 1, count: nums.count)
        for num in nums {
            count[num - 1] -= 1
        }
        var a = 0, b = 0
        for i in 0..<count.count {
            if count[i] == 1 {
                b = i + 1
            }
            if count[i] == -1 {
                a = i + 1
            }
        }
        return [a,b]
    }
}
