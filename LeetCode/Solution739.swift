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
        for idx in (0...temperatures.count - 1).reversed() {
            var warmIndex = Int.max
            for temp in temperatures[idx]+1...101 where cache[temp] < warmIndex {
                warmIndex = cache[temp]
            }
            if warmIndex < Int.max {
                result[idx] = warmIndex - idx
            }
            cache[temperatures[idx]] = idx
        }
        return result
    }
}
