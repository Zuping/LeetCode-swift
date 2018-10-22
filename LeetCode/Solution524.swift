//
//  Solution524.swift
//  LeetCode
//
//  Created by Zuping Li on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution524: NSObject {
    func findLongestWord(_ str: String, _ dict: [String]) -> String {
        guard str.count > 0 && dict.count > 0 else { return "" }
        var result = ""
        let chars = Array(str)
        for word in dict {
            var idx = 0
            let wordChars = Array(word)
            for char in chars {
                if idx < wordChars.count && char == wordChars[idx] {
                    idx += 1
                }
            }
            
            if idx != word.count { continue }
            
            if word.count > result.count {
                result = word
            } else if word.count == result.count && word < result {
                result = word
            }
        }
        return result
    }
}
