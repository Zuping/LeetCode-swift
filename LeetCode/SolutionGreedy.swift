//
//  SolutionGreedy.swift
//  LeetCode
//
//  Created by zuping on 11/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionGreedy: NSObject {
    
    // 763. Partition Labels
    func partitionLabels(_ S: String) -> [Int] {
        var last = [Character: Int]()
        let chars = Array(S)
        for i in (0 ..< chars.count).reversed() {
            if !last.keys.contains(chars[i]) {
                last[chars[i]] = i
            }
        }
        var l = 0, r = last[chars[0]]!
        var res = [Int]()
        for i in 1 ..< chars.count {
            let ch = chars[i]
            let lastCh = last[ch]!
            if i > r {
                res.append(r - l + 1)
                l = i
                r = lastCh
            } else {
                if lastCh > r {
                    r = lastCh
                }
            }
        }
        res.append(r - l + 1)
        return res
    }
}
