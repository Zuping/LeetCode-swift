//
//  Solution347.swift
//  LeetCode
//
//  Created by zuping on 11/2/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution347: NSObject {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var result: [Int] = []
        guard nums.count > 0 else { return result }
        var map: [Int: Int] = [:]
        for num in nums {
            map[num] = map[num, default: 0] + 1
        }
        var counts: [[Int]] = Array(repeating: [], count: nums.count)
        for key in map.keys {
            counts[map[key]! -  1].append(key)
        }
        for idx in (0 ..< counts.count).reversed() where result.count < k {
            result += counts[idx]
        }
        return result
    }
}
