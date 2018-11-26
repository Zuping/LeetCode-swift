//
//  SolutionSlidingWindowTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionSlidingWindowTest: XCTestCase {

    let solution = SolutionSlidingWindow()

    func test904() {
        assert(solution.totalFruit([1]) == 1)
//        assert(solution.totalFruit([1, 2, 1]) == 3)
//        assert(solution.totalFruit([0, 1, 2, 1]) == 3)
        assert(solution.totalFruit([1,2,3,2,2]) == 4)
        assert(solution.totalFruit([3,3,3,1,2,1,1,2,3,3,4]) == 5)
    }

    // 159. Longest Substring with At Most Two Distinct Characters
    func test159() {
        assert(solution.lengthOfLongestSubstringTwoDistinct("eceba") == 3)
        assert(solution.lengthOfLongestSubstringTwoDistinct("ccaabbb") == 5)
    }
    
}
