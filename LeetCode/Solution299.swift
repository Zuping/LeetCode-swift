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
        var dict: [Character: Int] = Dictionary()
        for char in secret {
            dict[char] = dict[char, default: 0] + 1
        }
        var cow = 0, bull = 0
        let sArray = Array(secret), gArray = Array(guess)
        for idx in 0..<secret.count where sArray[idx] == gArray[idx] {
            bull += 1
            dict[sArray[idx]] = dict[sArray[idx]]! - 1
        }

        for idx in 0..<secret.count {
            if sArray[idx] == gArray[idx] { continue }

            if dict[gArray[idx]] != nil && dict[gArray[idx]]! > 0 {
                cow += 1
                dict[gArray[idx]] = dict[gArray[idx]]! - 1
            }
        }

        return "\(bull)A\(cow)B"
    }
}
