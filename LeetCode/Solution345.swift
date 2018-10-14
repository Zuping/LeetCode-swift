//
//  Solution345.swift
//  LeetCode
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution345: NSObject {
    func reverseVowels(_ s: String) -> String {
        var l = 0, r = s.count - 1
        let letters = Array("aeiouAEIOU")
        var chars = Array(s)
        while l <= r {
            if !letters.contains(chars[l]) {
                l += 1
                continue
            }
            if !letters.contains(chars[r]) {
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
