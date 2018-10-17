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
        for idx in 1..<array.count where array[idx] == array[idx - 1] {
            return array[idx]
        }
        return -1
    }
}
