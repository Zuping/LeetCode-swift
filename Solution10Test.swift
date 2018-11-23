//
//  Solution10Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution10Test: XCTestCase {

    let solution = Solution10()

    func test1() {
        assert(solution.isMatch("aaa", "a*a") == true)
        assert(solution.isMatch("aa", "a") == false)
        assert(solution.isMatch("aab", "c*a*b") == true)
        assert(solution.isMatch("mississippi", "mis*is*p*.") == false)
    }

    func test2() {
        assert(solution.isMatch("a", ".*..a*") == true)
    }

    func test3() {
        assert(solution.isMatch("ab", ".*c") == false)
        assert(solution.isMatch("ab", ".*") == true)

    }

}
