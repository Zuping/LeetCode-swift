//
//  Solution5Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution5Test: XCTestCase {

    let solution = Solution5()

    func test1() {
        assert(solution.longestPalindrome("babad") == "bab")
    }
    func test2() {
        assert(solution.longestPalindrome("cbbd") == "bb")
    }

}
