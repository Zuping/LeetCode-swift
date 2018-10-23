//
//  Solution55Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution55Test: XCTestCase {
    func test1() {
        let result = Solution55().canJump([2, 3, 1, 1, 4])
        assert(result == true)
    }
    func test2() {
        let result = Solution55().canJump([3, 2, 1, 0, 4])
        assert(result == false)
    }

    func test3() {
        let result = Solution55().canJump([0, 1, 2])
        assert(result == false)
    }

    func test4() {
        let result = Solution55().canJump([1, 0, 1, 0, 0])
        assert(result == false)
    }

    func test5() {
        let result = Solution55().canJump([1, 0, 1, 0])
        assert(result == false)
    }
}
