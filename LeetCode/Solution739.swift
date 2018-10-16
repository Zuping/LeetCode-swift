//
//  Solution739.swift
//  LeetCode
//
//  Created by Zuping Li on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution739: NSObject {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        // searching backward
        var result = Array(repeating: 0, count: temperatures.count)
        var cache = Array(repeating: Int.max, count: 102)
        for i in (0...temperatures.count - 1).reversed() {
            var warm_index = Int.max
            for t in temperatures[i]+1...101 {
                if cache[t] < warm_index {
                    warm_index = cache[t]
                }
            }
            if warm_index < Int.max {
                result[i] = warm_index - i
            }
            cache[temperatures[i]] = i
        }
        return result
    }
}
