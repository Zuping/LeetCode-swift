//
//  SolutionDynamicProgramming.swift
//  LeetCodeTest
//
//  Created by zuping on 10/29/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionDynamicProgrammingTest: XCTestCase {

    let solution = SolutionDynamicProgramming()

    // LeetCode 139. Word Break
    func test139_1() {
        assert(solution.wordBreak("a", ["a", "code"]))
        assert(solution.wordBreak("leetcode", ["leet", "code"]))
        assert(solution.wordBreak("applepenapple", ["apple", "pen"]))
        assert(solution.wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"]) == false)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
