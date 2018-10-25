//
//  Solution647Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution647Test: XCTestCase {

    let solution = Solution647()

    func test1() {
        let result = solution.countSubstrings("abc")
        assert(result == 3)
    }
    func test2() {
        let result = solution.countSubstrings("aaa")
        assert(result == 6)
    }

}
