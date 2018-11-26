//
//  Solution150.swift
//  LeetCode
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution150: NSObject {
    func evalRPN(_ tokens: [String]) -> Int {
        guard tokens.count > 0 else { return 0 }
        let operators = Set<String>(["+", "-", "*", "/"])
        var stack = [String]()
        for token in tokens {
            if operators.contains(token) {
                let b = Int(stack.removeLast())!
                let a = Int(stack.removeLast())!
                var res = 0
                switch token {
                case "+":
                    res = a + b
                    break
                case "-":
                    res = a - b
                    break
                case "*":
                    res = a * b
                    break
                case "/":
                    res = a / b
                    break
                default:
                    break
                }
                stack.append(String(res))
            } else {
                stack.append(token)
            }
        }
        return Int(stack[0])!
    }
}
