//
//  Solution9.swift
//  LeetCode
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution9: NSObject {
    func isPalindrome(_ num: Int) -> Bool {
        guard num >= 0 else {
            return false
        }
        var digits: [Int] = []
        var num = num
        while num > 0 {
            digits.append(num % 10)
            num /= 10
        }
        for idx in 0 ..< digits.count/2 {
            if digits[idx] != digits[digits.count - idx - 1] {
                return false
            } else {
                
            }
        }
        return true
    }
}
