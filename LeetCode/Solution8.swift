//
//  Solution8.swift
//  LeetCode
//
//  Created by zuping on 11/26/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution8: NSObject {
    func myAtoi(_ str: String) -> Int {
        var chars = Array(str.trimmingCharacters(in: CharacterSet.whitespaces))
        guard chars.count > 0 else { return 0 }
        var res = 0
        var sign = 1
        if chars[0] == "-" {
            sign = -1
            chars.removeFirst()
        } else if chars[0] == "+" {
            sign = 1
            chars.removeFirst()
        } else if !CharacterSet.decimalDigits.contains(chars[0].unicodeScalars.first!) {
            return 0
        }
        for char in chars {
            if CharacterSet.decimalDigits.contains(char.unicodeScalars.first!) {
                let digit = Int(String(char))!
                res = res * 10 + digit
                if sign * res > Int32.max {
                    return Int(Int32.max)
                } 
                if sign * res < Int32.min {
                    return Int(Int32.min)
                }
            } else {
                break
            }
        }
        return res * sign
    }
}
