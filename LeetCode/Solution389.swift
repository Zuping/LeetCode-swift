//
//  Solution389.swift
//  LeetCode
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution389: NSObject {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var dictionary:[Character:Int] = [:]
        for c in s {
            if dictionary[c] != nil {
                dictionary[c] = dictionary[c]! + 1
            } else {
                dictionary[c] = 1
            }
        }
        for c in t {
            if dictionary[c] != nil {
                let count = dictionary[c]! - 1
                if count == 0 {
                    dictionary.removeValue(forKey: c)
                } else {
                    dictionary[c] = dictionary[c]! - 1
                }
            } else {
                return c
            }
        }
        return Character("a")
    }
}
