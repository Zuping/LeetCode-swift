//
//  Solution717.swift
//  LeetCode
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution717: NSObject {
    
    var flag: Bool = true
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        guard bits.count > 0 else {
            return false
        }
        dfs(0, bits:  bits)
        return flag
    }
    
    func dfs(_ index: Int, bits: [Int]) {
        if index == bits.count {
            return
        }
        
        if bits[index] == 1 && bits[index + 1] == 0 {
            if index + 1 == bits.count - 1 {
                flag = false
            } else {
                dfs(index + 2, bits: bits)
            }
        }
        
        if bits[index] == 1 && bits[index + 1] == 1 {
            if index + 1 == bits.count - 1 {
                flag = false
            } else {
                dfs(index + 2, bits: bits)
            }
        }
        
        if bits[index] == 0 {
            if index + 1 == bits.count {
                
            } else {
                dfs(index + 1, bits: bits)
            }
        }
    }
}
