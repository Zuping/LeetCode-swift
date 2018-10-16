//
//  Solution299.swift
//  LeetCode
//
//  Created by Zuping Li on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution299: NSObject {
    func getHint(_ secret: String, _ guess: String) -> String {
        var dict:[Character:Int] = Dictionary()
        for char in secret {
            dict[char] = dict[char, default: 0] + 1
        }
        var cow = 0, bull = 0
        let sArray = Array(secret), gArray = Array(guess)
        for i in 0..<secret.count {
            if sArray[i] == gArray[i] {
                bull += 1
                dict[sArray[i]] = dict[sArray[i]]! - 1
            }
        }
        
        for i in 0..<secret.count {
            if sArray[i] == gArray[i] { continue }
            
            if dict[gArray[i]] != nil && dict[gArray[i]]! > 0 {
                cow += 1
                dict[gArray[i]] = dict[gArray[i]]! - 1
            }
        }
        
        return "\(bull)A\(cow)B"
    }
}
