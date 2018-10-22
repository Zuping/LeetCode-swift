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
        var product = 1, count = 0
        var subArray: [Int] = []
        for num in nums {
            product *= num
            if product < kFactor {
                subArray.append(num)
                count += subArray.count > 1 ? 2 : 1
            } else {
                while product > kFactor {
                    product = product / subArray.first!
                    subArray.removeFirst()
                }
            }
        }
        return count
    }
}
