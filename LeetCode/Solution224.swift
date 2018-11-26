//
//  Solution224.swift
//  LeetCode
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution224: NSObject {
    func calculate(_ s: String) -> Int {
        let chars = Array(s).filter({ $0 != " " })
        let operators = Set<String>(["+", "-", "*", "/"])
        var idx = 0
        var stack = [String]()
        while idx < chars.count {
            if CharacterSet.decimalDigits.contains(chars[idx].unicodeScalars.first!) {
                let pre = idx
                while idx < chars.count && CharacterSet.decimalDigits.contains(chars[idx].unicodeScalars.first!) {
                    idx += 1
                }
                let numStr = String(chars[pre ..< idx])
                let b = Int(numStr)!
                if pre > 0 && chars[pre - 1] != "(" {
                    switch stack.removeLast() {
                    case "+":
                        let a = Int(stack.removeLast())!
                        stack.append(String(a + b))
                        break
                    case "-":
                        let a = Int(stack.removeLast())!
                        stack.append(String(a - b))
                    default:
                        break
                    }
                } else {
                    stack.append(numStr)
                }
                continue
            }
            
            if operators.contains(String(chars[idx])) {
                stack.append(String(chars[idx]))
                idx += 1
                continue
            }
            
            if chars[idx] == "(" {
                stack.append("(")
                idx += 1
                continue
            }
            
            if chars[idx] == ")" {
                let tmp = stack.removeLast()
                stack.removeLast()
                if stack.isEmpty {
                    stack.append(tmp)
                    idx += 1
                    continue
                }
                var b = Int(tmp)!
                while true {
                    if operators.contains(stack.last!) {
                        switch stack.removeLast() {
                        case "+":
                            let a = Int(stack.removeLast())!
                            b = a + b
                            stack.append(String(b))
                            break
                        case "-":
                            let a = Int(stack.removeLast())!
                            b = a - b
                            stack.append(String(b))
                        default:
                            break
                        }
                    }
                    if stack.count == 1 {
                        break
                    }
                    if stack[stack.count - 2] == "(" {
                        break
                    }
                }
                idx += 1
            }
            
        }
        
        return Int(stack[0])!
    }
}
