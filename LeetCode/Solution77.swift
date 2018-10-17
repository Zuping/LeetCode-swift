//
//  Solution77.swift
//  LeetCode
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution77: NSObject {
    func combine(_ num: Int, _ kFactor: Int) -> [[Int]] {
        guard num > 0 && kFactor > 0 else {
            return []
        }
        var result: [[Int]] = []
        var currentRes: [Int] = []
        combineRecursion(num, kFactor, index: 1, currentRes: &currentRes, result: &result)
        return result
    }
    
    func combineRecursion(_ num: Int, _ kFactor: Int, index: Int,
                          currentRes: inout [Int], result: inout [[Int]]) {
        if currentRes.count == kFactor {
            result.append(currentRes)
            return
        }
        if index > num {
            return
        }
        for idx in index...num {
            currentRes.append(idx)
            combineRecursion(num, kFactor, index: idx + 1, currentRes: &currentRes, result: &result)
            currentRes.removeLast()
        }
    }
}
