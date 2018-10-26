//
//  Solution516.swift
//  LeetCode
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution516: NSObject {
    func longestPalindromeSubseq(_ str: String) -> Int {
        guard str.count > 0 else { return 0 }
        var dpArray: [[Int]] = []
        for idx in 0 ..< str.count {
            dpArray.append(Array(repeating: 0, count: str.count))
            dpArray[idx][idx] = 1
        }
        let chars = Array(str)
        for col in 0 ..< str.count {
            for row in (0 ..< col).reversed() {
                if chars[row] == chars[col] {
                    dpArray[row][col] = 2 + dpArray[row + 1][col - 1]
                } else {
                    dpArray[row][col] = max(dpArray[row][col - 1], dpArray[row + 1][col])
                }
            }
        }
        return dpArray[0][str.count - 1]
    }
}
