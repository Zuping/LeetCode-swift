//
//  Solution917Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution917Test: XCTestCase {

    func test1() {
        let solution = Solution917()
        let result = solution.reverseOnlyLetters("ab-cd")
        assert(result == "dc-ba")
    }

    func test2() {
        let result = Solution917().reverseOnlyLetters("a-bC-dEf-ghIj")
        assert(result == "j-Ih-gfE-dCba")
    }

    func test3() {
        let result = Solution917().reverseOnlyLetters("Test1ng-Leet=code-Q!")
        assert(result == "Qedo1ct-eeLg=ntse-T!")
    }
}
