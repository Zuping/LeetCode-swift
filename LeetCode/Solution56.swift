//
//  Solution56.swift
//  LeetCode
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution56: NSObject {
    func merge(_ intervals: [Interval]) -> [Interval] {
        guard intervals.count > 1 else { return intervals }
        let intervals = intervals.sorted(by: {
            if $0.start != $1.start {
                return $0.start < $1.start
            } else {
                return $0.end < $1.end
            }
        })
        var result: [Interval] = []
        var tmpInterval = intervals.first!
        for idx in 1 ..< intervals.count {
            let interval = intervals[idx]
            if interval.start >= tmpInterval.start && interval.start <= tmpInterval.end {
                tmpInterval.end = tmpInterval.end < interval.end ? interval.end : tmpInterval.end
            } else {
                result.append(tmpInterval)
                tmpInterval = interval
            }
            if idx == intervals.count - 1 {
                result.append(tmpInterval)
            }
        }
        return result
    }
}
