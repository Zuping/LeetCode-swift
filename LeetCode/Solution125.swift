//
//  Solution125.swift
//  LeetCode
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution125: NSObject {
    func isPalindrome(_ str: String) -> Bool {
        guard str.count > 1 else {
            return true
        }
        let alphanumeric = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
        var chars:[Character] = []
        for char in str.lowercased() where alphanumeric.contains(char) {
            chars.append(char)
        }
        for idx in 0 ..< chars.count/2 {
            if chars[idx] != chars[chars.count - idx - 1] {
                return false
            }
        }
        return true
    }
}
