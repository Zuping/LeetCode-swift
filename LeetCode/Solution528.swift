//
//  Solution528.swift
//  LeetCode
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution528: NSObject {
    // Prefix Sum to accommodate the weight requirement
    var preSum: [Int]
    init(_ w: [Int]) {
        preSum = Array(repeating: 0, count: w.count)
        var cur = 0
        for i in 0 ..< w.count {
            preSum[i] = cur + w[i]
            cur = cur + w[i]
        }
    }
    
    // Binary search.
    // Find the first value greater than the target in the array
    func pickIndex() -> Int {
        let num = Int.random(in: 0 ..< preSum.last!)
        var l = 0, r = preSum.count
        while l < r {
            let mid = l + (r - l) / 2
            if preSum[mid] < num {
                l = mid + 1
            } else {
                r = mid
            }
        }
        return l
    }
}
