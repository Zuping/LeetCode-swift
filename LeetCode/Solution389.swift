//
//  Solution389.swift
//  LeetCode
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution389: NSObject {
    func findTheDifference(_ str: String, _ target: String) -> Character {
        var dictionary: [Character: Int] = [:]
        for char in str {
            if dictionary[char] != nil {
                dictionary[char] = dictionary[char]! + 1
            } else {
                dictionary[char] = 1
            }
        }
        for char in target {
            if dictionary[char] != nil {
                let count = dictionary[char]! - 1
                if count == 0 {
                    dictionary.removeValue(forKey: char)
                } else {
                    dictionary[char] = dictionary[char]! - 1
                }
            } else {
                return char
            }
        }
        return Character("a")
    }
}
