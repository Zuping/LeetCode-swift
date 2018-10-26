//
//  Solution242.swift
//  LeetCode
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution242: NSObject {
    func isAnagram(_ str: String, _ target: String) -> Bool {
        guard str.count == target.count else {
            return false
        }
        let chars1 = str.sorted()
        let chars2 = target.sorted()
        for idx in 0 ..< str.count {
            if chars1[idx] != chars2[idx] {
                return false
            }
        }
        return true
    }
}
