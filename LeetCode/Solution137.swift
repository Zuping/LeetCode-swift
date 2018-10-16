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
            for i in (0...31).reversed() {
                if ((smallInt >> i) & 1) == 1 {
                    bits[i] += 1
                }
            }
        }
        
        var result = Int32(0)
        for i in 0...31 {
            if bits[i] % 3 == 1 {
                result |= (1 << i)
            }
        }
        return Int(result)
    }
}
