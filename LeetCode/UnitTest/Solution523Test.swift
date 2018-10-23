//
//  Solution523Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution523Test: XCTestCase {

    func test1() {
        let result = Solution523().checkSubarraySum([23, 2, 4, 6, 7], 6)
        assert(result == true)
    }
    func test2() {
        let result = Solution523().checkSubarraySum([23, 2, 6, 4, 7], 6)
        assert(result == true)
    }
    func test3() {
        let result = Solution523().checkSubarraySum([23, 2, 4, 6, 7], -6)
        assert(result == true)
    }
    func test4() {
        let result = Solution523().checkSubarraySum([0, 0], 0)
        assert(result == true)
    }
    func test5() {
        let result = Solution523().checkSubarraySum([0, 1, 0], 0)
        assert(result == false)
    }
    func test6() {
        let result = Solution523().checkSubarraySum([0, 0], -1)
        assert(result == true)
    }

    func test7() {
        let result = Solution523().checkSubarraySum([0, 1, 0], -1)
        assert(result == true)
    }
}
