//
//  Solution713.swift
//  LeetCode
//
//  Created by Zuping Li on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution713: NSObject {
    func numSubarrayProductLessThanK(_ nums: [Int], _ kFactor: Int) -> Int {
        guard kFactor >= 1 else { return 0 }
        var product = 1, count = 0
        var subArray: [Int] = []
        for num in nums {
            product *= num
            subArray.append(num)
            while !subArray.isEmpty && product >= kFactor {
                product /= subArray[0]
                subArray.removeFirst()
            }
            count += subArray.count
        }
        return count
    }
}
