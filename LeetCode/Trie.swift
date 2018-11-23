//
//  Trie.swift
//  LeetCode
//
//  Created by zuping on 11/11/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Trie: NSObject {
    let root = TrieNode()
    /** Initialize your data structure here. */
    override init() { }

    /** Inserts a word into the trie. */
    func insert(_ word: String) {
        let chars = word.utf16.map({ Int($0) })

        var node = root
        for i in 0 ..< chars.count {
            var child = node.chars[chars[i]]
            if child == nil {
                child = TrieNode()
            }

            node.chars[chars[i]] = child
            node = child!
        }
        node.end = true
    }

    /** Returns if the word is in the trie. */
    func search(_ word: String) -> Bool {
        let chars = word.utf16.map({ Int($0) })
        var node = root
        for i in 0 ..< chars.count {
            guard let child = node.chars[chars[i]] else {
                return false
            }
            node = child
        }
        return node.end
    }

    /** Returns if there is any word in the trie that starts with the given prefix. */
    func startsWith(_ prefix: String) -> Bool {
        let chars = prefix.utf16.map({ Int($0) })
        var node = root
        for i in 0 ..< chars.count {
            guard let child = node.chars[chars[i]] else {
                return false
            }
            node = child
        }
        return true
    }

    func fuzzySearch(_ word: String) -> Bool {
        let chars = word.utf16.map({ Int($0) })
        return fuzzySearchRecusion(0, chars, root)
    }

    func fuzzySearchRecusion( _ idx: Int, _ chars: [Int], _ node: TrieNode) -> Bool {
        if idx == chars.count {
            return node.end
        }
        if chars[idx] == 46 {
            for i in 0 ..< node.chars.count {
                if let child = node.chars[i] {
                    if fuzzySearchRecusion(idx + 1, chars, child) {
                        return true
                    }
                }
            }
            return false
        } else {
            if let child = node.chars[chars[idx]] {
                return fuzzySearchRecusion(idx + 1, chars, child)
            } else {
                return false
            }
        }
    }
}

class TrieNode {
    var end = false
    var chars: [TrieNode?] = Array(repeating: nil, count: 129)
}
