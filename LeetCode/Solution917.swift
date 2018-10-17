//
//  Solution917.swift
//  LeetCode
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution917: NSObject {
    func reverseOnlyLetters(_ str: String) -> String {
        var left = 0, right = str.count - 1
        let letters = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var chars = Array(str)
        while left <= right {
            if !letters.contains(chars[left]) {
                left += 1
                continue
            }
            if !letters.contains(str[str.index(str.startIndex, offsetBy: right)]) {
                right -= 1
                continue
            }
            let tmp = chars[left]
            chars[left] = chars[right]
            chars[right] = tmp
            left += 1
            right -= 1
        }
        return String(chars)
    }
}
