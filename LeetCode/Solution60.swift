//
//  Solution60.swift
//  LeetCode
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution60: NSObject {
    func getPermutation(_ num: Int, _ kth: Int) -> String {
        guard num > 1 else {
            return "1"
        }
        var vals: [Int] = Array(repeating: 1, count: 11)
        var nums: [Int] = Array(repeating: 1, count: 11)
        var kth = kth - 1
        for idx in 0...10 {
            vals[idx] = idx == 0 ? 1 : vals[idx - 1] * (idx + 1)
            nums[idx] = idx + 1
        }
        var result = ""
        for idx in (0...num - 2).reversed() {
            let iidx = kth / vals[idx]
            result.append(String(nums[iidx]))
            nums.remove(at: iidx)
            kth %= vals[idx]
        }
        result.append(String(nums[0]))
        return result
    }
}
