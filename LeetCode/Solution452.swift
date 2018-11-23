//
//  Solution452.swift
//  LeetCode
//
//  Created by zuping on 11/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution452: NSObject {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        guard points.count > 0 else {
            return 0
        }
        let points = points.sorted(by: {
            if $0[0] != $1[0] {
                return $0[0] < $1[0]
            } else {
                return $0[1] < $1[1]
            }
        })
        var count = 1
        var pre = points[0]
        for idx in 1 ..< points.count {
            let cur = points[idx]
            if cur[0] <= pre[1] {
                if cur[1] < pre[1] {
                    pre = cur
                }
                continue
            } else {
                count += 1
                pre = cur
            }
        }
        return count
    }
}
