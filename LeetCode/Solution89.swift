//
//  Solution89.swift
//  LeetCode
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution89: NSObject {
    func grayCode(_ number: Int) -> [Int] {
        guard number > 0 else {
            return [0]
        }
        var result: [Int] = [0, 1]
        for idx in 1..<number {
            for iidx in (0...result.count - 1).reversed() {
                result.append(result[iidx] + 1 << idx)
            }
        }
        return result
    }
}
