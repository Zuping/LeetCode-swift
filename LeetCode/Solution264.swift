//
//  Solution264.swift
//  LeetCode
//
//  Created by zuping on 11/13/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class UglyNumber: NSObject {
    func nthUglyNumber(_ n: Int) -> Int {
        var result = [1]
        var i2 = 0, i3 = 0, i5 = 0
        var i = 0
        while i < n {
            let m2 = result[i2] * 2
            let m3 = result[i3] * 3
            let m5 = result[i5] * 5
            let minimum = min(m2, m3, m5)
            result.append(minimum)
            i += 1
            if minimum == m2 {
                i2 += 1
            }
            if minimum == m3 {
                i3 += 1
            }
            if minimum == m5 {
                i5 += 1
            }
        }
        return result[n - 1]
    }
}
