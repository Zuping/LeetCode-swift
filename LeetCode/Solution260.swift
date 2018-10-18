//
//  Solution260.swift
//  LeetCode
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution260: NSObject {
    func singleNumber(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else {
            return []
        }
        let axorb = nums.reduce(0) { $0 ^ $1 }
        var bitFilter = 0
        for idx in 0...31 where (axorb >> idx) & 1 == 1 {
            bitFilter = 1 << idx
            break
        }
        var aNum = 0, bNum = 0
        for num in nums where bitFilter & num != 0 {
            aNum ^= num
        }
        bNum = axorb ^ aNum
        return [aNum, bNum]
    }
}
