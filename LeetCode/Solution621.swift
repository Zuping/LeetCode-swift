//
//  Solution621.swift
//  LeetCode
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution621: NSObject {
    func leastInterval(_ tasks: [Character], _ num: Int) -> Int {
        guard tasks.count > 0 else { return 0 }
        if num == 0 { return tasks.count }
        var dict: [Character: Int] = [:]
        for char in tasks {
            dict[char] = dict[char, default: 0] + 1
        }
        let value = dict.values.sorted()
        let mx = value.last!
        var cnt = 1
        for idx in (0..<value.count - 1).reversed() where value[idx] == mx {
            cnt += 1
        }
        return max(tasks.count, (num + 1) * (mx - 1) + cnt)
    }
}
