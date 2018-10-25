//
//  Solution647.swift
//  LeetCode
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution647: NSObject {
    func countSubstrings(_ str: String) -> Int {
        guard str.count > 0 else { return 0 }
        var chars = Array(str)
        var dpArray: [Set<Int>] = [[hash(0, 0)]]
        for idx in 1 ..< chars.count {
            var tmpRes: Set<Int> = [hash(idx, idx)]
            for iidx in (0 ... idx - 1).reversed() where chars[iidx] == chars[idx] {
                if iidx == idx - 1 {
                    tmpRes.insert(hash(iidx, idx))
                    continue
                }
                if dpArray[idx - 1].contains(hash(iidx + 1, idx - 1)) {
                    tmpRes.insert(hash(iidx, idx))
                }
            }
            dpArray.append(tmpRes)
        }
        return dpArray.reduce(0, { $0 + $1.count })
    }
    func hash(_ aVal: Int, _ bVal: Int) -> Int {
        return aVal + bVal * 10000000
    }
}
