//
//  Solution43.swift
//  LeetCode
//
//  Created by zuping on 10/31/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution43: NSObject {
    func multiply(_ num1: String, _ num2: String) -> String {
        guard num1.count > 0 && num2.count > 0 else { return "" }
        let arr1 = num1.reversed().map({ Int(String($0)) })
        let arr2 = num2.reversed().map({ Int(String($0)) })
        var result: [Int] = Array(repeating: 0, count: num1.count + num2.count)
        for idx in 0 ..< arr2.count {
            let num = arr2[idx]!
            if num == 0 { continue }
            var tmpResult: [Int] = []
            var carry = 0
            for jdx in 0 ..< arr1.count {
                let tmp = arr1[jdx]! * num + carry
                carry = tmp / 10
                tmpResult.append(tmp % 10)
            }
            if carry > 0 {
                tmpResult.append(carry)
            }

            carry = 0
            for jdx in 0 ..< tmpResult.count {
                let tmp = result[idx + jdx] + tmpResult[jdx] + carry
                carry = tmp / 10
                result[idx + jdx] = tmp % 10
            }
            var jdx = idx + tmpResult.count
            while carry > 0 {
                let tmp = result[jdx] +  carry
                carry = tmp / 10
                result[jdx] = tmp % 10
                jdx += 1
            }
        }
        var string = ""
        for idx in (0 ..< result.count).reversed() {
            if string.count == 0 && result[idx] == 0 {
                continue
            } else {
                string.append(String(result[idx]))
            }
        }

        return string.count > 0 ? string : "0"
    }
}
