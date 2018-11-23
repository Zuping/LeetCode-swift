//
//  WordDistance.swift
//  LeetCode
//
//  Created by zuping on 11/12/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class WordDistance: NSObject {

    var dict = [String: Int]()
    var words: [String]?
    init(_ words: [String]) {
        self.words = words
    }

    func shortest(_ word1: String, _ word2: String) -> Int {
        guard let words = words else {
            return -1
        }
        var key = ""
        if word1 < word1 {
            key = word1 + "_" + word2
        } else {
            key = word2 + "_" + word1
        }

        if let distance = dict[key] {
            return distance
        }


        var i1 = -1, i2 = -1, minDist = Int.max
        for i in 0 ..< words.count {
            let word = words[i]
            if word == word1 {
                i1 = i
            }
            if word == word2 {
                i2 = i
            }
            if i1 != -1 && i2 != -1 {
                minDist = min(abs(i1 - i2), minDist)
                if minDist == 1 {
                    break
                }
            }
        }
        dict[key] = minDist
        return minDist
    }
}
