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
    
    // 312. Burst Balloons
    func test312() {
        let nums = [3,1,5,8]
        assert(solution.maxCoins(nums) == 167)
    }
    
    // 338. Counting Bits
    func test338() {
        assert(solution.countBits(7) == [0, 1, 1, 2, 1, 2, 2, 3])
        assert(solution.countBits(2) == [0, 1, 1])
    }
    
    // 746. Min Cost Climbing Stairs
    func test746() {
//        assert(solution.minCostClimbingStairs([10, 15, 20]) == 15)
        assert(solution.minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]) == 6)
    }
    
    // 70. Climbing Stairs
    func test70() {
        assert(solution.climbStairs(1) == 1)
        assert(solution.climbStairs(3) == 3)
    }

}
