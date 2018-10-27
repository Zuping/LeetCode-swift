//
//  Solution125Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution125Test: XCTestCase {
    let solution = Solution125()

    func test1() {
        let result = solution.isPalindrome("A man, a plan, a canal: Panama")
        assert(result == true)
    }

    func test2() {
        let result = solution.isPalindrome("race a car")
        assert(result == false)
    }

    func test3() {
        let result = solution.isPalindrome("    aba ")
        assert(result == true)
    }

    func test4() {
        let result = solution.isPalindrome("a")
        assert(result == true)
    }

    func test5() {
        let result = solution.isPalindrome("0P")
        assert(result == false)
    }

}
