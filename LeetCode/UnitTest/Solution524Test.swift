//
//  Solution524Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution524Test: XCTestCase {

    func test1() {
        let result = Solution524().findLongestWord("abpcplea", ["ale","apple","monkey","plea"])
        assert(result == "apple")
    }
    func test2() {
        let result = Solution524().findLongestWord("abpcplea", ["a","b","c"])
        assert(result == "a")
    }
    
    func test3() {
        let result = Solution524().findLongestWord("abpcplea", [])
        assert(result == "")
    }
    
    func test4() {
        let result = Solution524().findLongestWord("aaa", ["aaa","aa","a"])
        assert(result == "aaa")
    }
}
