//
//  TrieTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/11/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class TrieTest: XCTestCase {

    let trie = Trie()

    func test1() {
        trie.insert(".ax")
    }

    func test2() {
        trie.insert("bad")
        trie.insert("dad")
        trie.insert("mad")

        assert(trie.fuzzySearch(".ad"))
    }

}
