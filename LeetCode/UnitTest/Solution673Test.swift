//
//  Solution673Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution673Test: XCTestCase {

    func test1() {
        let result = Solution673().findNumberOfLIS([1, 3, 5, 4, 7])
        assert(result == 2)
    }

    func test2() {
        let result = Solution673().findNumberOfLIS([2, 2, 2, 2, 2])
        assert(result == 5)
    }
    func test3() {
        let result = Solution673().findNumberOfLIS([])
        assert(result == 0)
    }
    func test4() {
        let result = Solution673().findNumberOfLIS([1])
        assert(result == 1)
    }

}
