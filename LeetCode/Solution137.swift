//
//  Solution137.swift
//  LeetCode
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution137: NSObject {
    func singleNumber(_ nums: [Int]) -> Int {
        var bits = Array(repeating: 0, count: 32)
        for num in nums {
            let smallInt = Int32(num)
            for idx in (0...31).reversed() where ((smallInt >> idx) & 1) == 1 {
                bits[idx] += 1
            }
        }
        var result = Int32(0)
        for idx in 0...31 where bits[idx] % 3 == 1 {
            result |= (1 << idx)
        }
        return Int(result)
    }
}
