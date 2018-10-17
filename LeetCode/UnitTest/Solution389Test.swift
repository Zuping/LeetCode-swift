//
//  Solution389Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution389Test: XCTestCase {

    func test1() {
        let solution = Solution389()
        let result = solution.findTheDifference("abcd", "abcde")
        assert(result == "e")
    }

    func test2() {
        let solution = Solution389()
        let result = solution.findTheDifference("abcd", "aebcd")
        assert(result == "e")
    }
}
