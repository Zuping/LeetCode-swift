//
//  Solution560.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution560: NSObject {
    func subarraySum(_ nums: [Int], _ target: Int) -> Int {
        var count = 0
        var sum = 0
        var dict: [Int: Int] = [0: 1]
        for idx in 0..<nums.count {
            sum += nums[idx]
            if let cnt = dict[(sum - target)] {
                count += cnt
            }
            dict[sum, default: 0] += 1
        }
        return count
    }
}
