//
//  Solution128.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution128: NSObject {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var length = 0
        for num in nums {
            if numSet.contains(num - 1) {
                continue
            }
            var tmp = num
            while numSet.contains(tmp) {
                tmp += 1
            }
            if tmp - num > length {
                length = tmp - num
            }
        }
        return length
    }
}
