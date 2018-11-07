//
//  Solution76Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/4/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution76Test: XCTestCase {

    let solution = Solution76()

    func test1() {
        assert(solution.minWindow("ADOBECODEBANC", "ABC") == "BANC")
        assert(solution.minWindow("A", "AA") == "")
    }

}
