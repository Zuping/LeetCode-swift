//
//  Solution718.swift
//  LeetCode
//
//  Created by zuping on 10/23/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution718: NSObject {
    func findLength(_ aArray: [Int], _ bArray: [Int]) -> Int {
        guard aArray.count > 0 && bArray.count > 0 else { return 0 }
        var dpArray: [[Int]] = []
        for _ in 0..<aArray.count {
            dpArray.append(Array(repeating: 0, count: bArray.count))
        }
        var maxLength = 0
        for idx in 0..<aArray.count {
            for iidx in 0..<bArray.count where aArray[idx] == bArray[iidx] {
                if idx == 0 || iidx == 0 {
                    dpArray[idx][iidx] = 1
                } else {
                    dpArray[idx][iidx] = dpArray[idx - 1][iidx - 1] + 1
                }
                maxLength = max(maxLength, dpArray[idx][iidx])
            }
        }
        return maxLength
    }
}
