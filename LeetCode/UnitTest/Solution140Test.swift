//
//  Solution140Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution140Test: XCTestCase {

    let solution = Solution140()

    func test1() {
        let s = "catsanddog"
        let wordDict = ["cat", "cats", "and", "sand", "dog"]
        let result = solution.wordBreak(s, wordDict).sorted()
        let expectedRes = ["cats and dog", "cat sand dog"].sorted()
        assert(result == expectedRes)
    }

    func test2() {
        let s = "pineapplepenapple"
        let wordDict = ["apple", "pen", "applepen", "pine", "pineapple"]
        let result = solution.wordBreak(s, wordDict).sorted()
        let expectedRes = [
            "pine apple pen apple",
            "pineapple pen apple",
            "pine applepen apple"
            ].sorted()
        assert(result == expectedRes)
    }

    func test3() {
        let s = "catsandog"
        let wordDict = ["cats", "dog", "sand", "and", "cat"]
        let result = solution.wordBreak(s, wordDict)
        let expectedRes = [String]()
        assert(result == expectedRes)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
