//
//  Solution287.swift
//  LeetCode
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution287: NSObject {
    func findDuplicate(_ nums: [Int]) -> Int {
        var array = nums
        array.sort()
        for i in 1..<array.count {
            if array[i] == array[i - 1] {
                return array[i]
            }
        }
        return -1
    }
}
