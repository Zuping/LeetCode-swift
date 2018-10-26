//
//  Solution516Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution516Test: XCTestCase {

    let solution = Solution516()

    func test1() {
        assert(solution.longestPalindromeSubseq("bbbab") == 4)
    }

    func test2() {
        assert(solution.longestPalindromeSubseq("cbbd") == 2)
    }

}
