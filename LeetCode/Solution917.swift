//
//  Solution917.swift
//  LeetCode
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution917: NSObject {
    func reverseOnlyLetters(_ S: String) -> String {
        var l = 0, r = S.count - 1
        let letters = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var chars = Array(S)
        while l <= r {
            if !letters.contains(chars[l]) {
                l += 1
                continue
            }
            if !letters.contains(S[S.index(S.startIndex, offsetBy: r)]) {
                r -= 1
                continue
            }
            let tmp = chars[l]
            chars[l] = chars[r]
            chars[r] = tmp
            l += 1
            r -= 1
        }
        return String(chars)
    }
}
