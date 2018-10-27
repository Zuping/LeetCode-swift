//
//  Solution67.swift
//  LeetCode
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution67: NSObject {
    func addBinary(_ aVal: String, _ bVal: String) -> String {
        if aVal.count == 0 && bVal.count == 0 {
            return ""
        }
        var aChars = stringToIntArray(aVal)
        var bChars = stringToIntArray(bVal)
        if aChars.count > bChars.count {
            swap(&aChars, &bChars)
        }
        var carry = 0
        var result: [Int] = []
        for idx in 0 ..< aChars.count {
            let res = carry + aChars[idx] + bChars[idx]
            carry = res > 1 ? 1 : 0
            result.append(res % 2)
        }
        if bChars.count > aChars.count {
            for idx in aChars.count ..< bChars.count {
                let res = carry + bChars[idx]
                carry = res > 1 ? 1 : 0
                result.append(res % 2)
            }
        }
        if carry > 0 {
            result.append(1)
        }
        return result.reversed().reduce("", { $0 + String($1)})
    }
    func stringToIntArray(_ str: String) -> [Int] {
        var array: [Int] = []
        for char in str {
            if char == "0" {
                array.append(0)
            } else {
                array.append(1)
            }
        }
        return array.reversed()
    }
}
