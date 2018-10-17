//
//  Solution557.swift
//  LeetCode
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution557: NSObject {
    func reverseWords(_ str: String) -> String {
        let words = str.split(separator: " ")
        var result = ""
        for word in words {
            result.append(String(word.reversed()))
            result.append(" ")
        }
        return result.trimmingCharacters(in: CharacterSet.whitespaces)
    }
}
