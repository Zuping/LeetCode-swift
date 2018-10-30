//
//  SolutionDynamicProgramming.swift
//  LeetCode
//
//  Created by zuping on 10/29/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionDynamicProgramming: NSObject {
    // LeetCode 139. Word Break
    func wordBreak(_ str: String, _ wordDict: [String]) -> Bool {
        guard wordDict.count > 0 else { return false }
        var dpArray = Array(repeating: false, count: str.count + 1)
        dpArray[0] = true
        var chars = Array(str)
        for idx in 1 ..< chars.count + 1 {
            for jdx in (0 ..< idx).reversed() {
                let subStr = String(chars[jdx ..< idx])
                if wordDict.contains(subStr) && dpArray[jdx] == true {
                    dpArray[idx] = true
                }
            }
        }
        return dpArray.last!
    }
}
