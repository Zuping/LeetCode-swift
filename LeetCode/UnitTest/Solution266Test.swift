//
//  Solution266Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution266Test: XCTestCase {

    let solution = Solution266()

    func test1() {
        assert(solution.canPermutePalindrome("code") == false)
    }

    func test2() {
        assert(solution.canPermutePalindrome("aab") == true)
    }

    func test3() {
        assert(solution.canPermutePalindrome("carerac") == true)
    }

}
