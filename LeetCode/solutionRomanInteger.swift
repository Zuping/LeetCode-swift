//
//  solutionRomanInteger.swift
//  LeetCode
//
//  Created by zuping on 11/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

//  Symbol       Value
//  I             1
//  V             5
//  X             10
//  L             50
//  C             100
//  D             500
//  M             1000

class solutionRomanInteger: NSObject {
    let map = ["I": 1,
               "V": 5,
               "X": 10,
               "L": 50,
               "C": 100,
               "D": 500,
               "M": 1000]

    // 13. Roman to Integer
    func romanToInt(_ s: String) -> Int {
        let chars = Array(s).map({ String($0) })
        var i = 0, len = chars.count
        var res = 0
        while i < len {
            let c = chars[i]
            let cur = map[c]!
            var value = cur
            if i + 1 < len {
                let next = map[chars[i + 1]]!
                if cur < next {
                    value = next - cur
                    i += 1
                }
            }
            res += value
            i += 1
        }
        return res
    }

    // 12. Integer to Roman
    func intToRoman(_ num: Int) -> String {
        guard num > 0 else { return "" }
        var num = num
        var roman = ""

        let thousand = num / 1000
        if thousand > 0 {
            for _ in 0 ..< thousand { roman.append("M") }
        }
        num %= 1000
        let hundred = num / 100
        if hundred == 9 {
            roman.append("CM")
        } else if hundred < 9 && hundred >= 5 {
            roman.append("D")
            for _ in 0 ..< hundred - 5 { roman.append("C") }
        } else if hundred == 4 {
            roman.append("CD")
        } else {
            for _ in 0 ..< hundred { roman.append("C") }
        }
        num %= 100
        let tens = num / 10
        if tens == 9 {
            roman.append("XC")
        } else if tens < 9 && tens >= 5 {
            roman.append("L")
            for _ in 0 ..< tens - 5 { roman.append("X") }
        } else if tens == 4 {
            roman.append("XL")
        } else {
            for _ in 0 ..< tens { roman.append("X") }
        }

        let ones = num % 10
        if ones == 9 {
            roman.append("IX")
        } else if ones < 9 && ones >= 5 {
            roman.append("V")
            for _ in 0 ..< ones - 5 { roman.append("I") }
        } else if ones == 4 {
            roman.append("IV")
        } else {
            for _ in 0 ..< ones { roman.append("I") }
        }

        return roman
    }
}
