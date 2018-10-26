//
//  Solution266.swift
//  LeetCode
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution266: NSObject {
    func canPermutePalindrome(_ str: String) -> Bool {
        var dict: [Character: Int] = [:]
        for char in str {
            dict[char] = dict[char, default: 0] + 1
        }
        var oddCount = 0
        for value in dict.values where value % 2 != 0 {
            oddCount += 1
        }
        return oddCount < 2
    }
}
