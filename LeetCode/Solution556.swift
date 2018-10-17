//
//  Solution556.swift
//  LeetCode
//
//  Created by zuping on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution556: NSObject {
    func nextGreaterElement(_ number: Int) -> Int {
        var digits: [Int] = []
        var num = number
        while num != 0 {
            digits.append(num % 10)
            num /= 10
        }

        var pivot = -1
        for idx in 0..<digits.count - 1 where digits[idx] > digits[idx + 1] {
            pivot = idx
            break
        }

        if pivot == -1 {
            return -1
        }

        if pivot == 0 {
            let tmp = digits[0]
            digits[0] = digits[1]
            digits[1] = tmp
        } else {
            for idx in 0...pivot where digits[idx] > digits[pivot + 1] {
                let tmp = digits[idx]
                digits[idx] = digits[pivot + 1]
                digits[pivot + 1] = tmp
            }
            for idx in 0...pivot/2 {
                let tmp = digits[idx]
                digits[idx] = digits[pivot - idx]
                digits[pivot - idx] = tmp
            }
        }

        var result = 0, mutiplier = 1
        for idx in 0..<digits.count {
            result += digits[idx] * mutiplier
            mutiplier *= 10
        }

        if result > Int32.max {
            return -1
        }
        return result
    }
}
