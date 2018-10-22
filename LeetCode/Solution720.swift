//
//  Solution720.swift
//  LeetCode
//
//  Created by Zuping Li on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution720: NSObject {
    func longestWord(_ words: [String]) -> String {
        guard words.count > 0 else { return "" }
        let words = words.sorted { (aStr, bStr) -> Bool in
            if aStr.count != bStr.count {
                return aStr.count < bStr.count
            } else {
                return aStr < bStr
            }
        }
        var set = Set<String>()
        var result = "", tmpResult = ""
        for idx in 0..<words.count {
            let word = words[idx]
            if word.count == 1 {
                set.insert(word)
                tmpResult = word
                result = result == "" || word < result ? word : result
            } else {
                let preWord = String(word.prefix(word.count - 1))
                if set.contains(preWord) {
                    set.insert(word)
                    tmpResult = word
                    if tmpResult.count > result.count {
                        result = tmpResult
                    }
                }
            }
        }
        return result
    }
}
