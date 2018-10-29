//
//  Solution127.swift
//  LeetCode
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution127: NSObject {
    let alphas = Array("abcdefghijklmnopqrstuvwxyz")

    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        guard wordList.count > 0 && wordList.contains(endWord) else { return 0 }
        let steps = bfs([beginWord], endWord, wordList, 1)
        return steps != Int.max ? steps : 0
    }

    func bfs(_ queue: [String], _ target: String, _ wordList: [String],
             _ step: Int) -> Int {
        if queue.count == 0 {
            return 0
        }
        var newQueue: [String] = []
        let wordSet = Set(wordList)
        for word in queue {
            let chars = Array(word)
            for idx in 0 ..< chars.count {
                var tmpChars = chars
                for iidx in 0 ..< 26 where alphas[iidx] != chars[idx] {
                    tmpChars[idx] = alphas[iidx]
                    let tmpWord = String(tmpChars)
                    if tmpWord == target {
                        return step + 1
                    } else if wordSet.contains(tmpWord) {
                        newQueue.append(tmpWord)
                    }
                }
            }
        }
        let newWordList = wordList.filter({ !newQueue.contains($0) })
        return bfs(newQueue, target, newWordList, step + 1)
    }

    func canReach(_ word1: String, _ word2: String) -> Bool {
        let char1 = Array(word1)
        let char2 = Array(word2)
        var count = 0
        for idx in 0 ..< char1.count where char1[idx] != char2[idx] {
            count += 1
        }
        return count <= 1
    }
}
