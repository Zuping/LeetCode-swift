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

    // 279. Perfect Squares
    func test279() {
        assert(solution.numSquares(12) == 3)
    }

    // 221. Maximal Square
    func test221() {
        let matrix = [
           Array("10100"),
           Array("10111"),
           Array("11111"),
           Array("10010")]
        assert(solution.maximalSquare(matrix) == 4)
    }

}
