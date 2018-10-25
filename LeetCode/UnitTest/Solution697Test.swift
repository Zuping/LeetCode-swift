//
//  Solution697Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution697Test: XCTestCase {

    let solution = Solution697()

    func test1() {
        let result = solution.findShortestSubArray([1, 2, 2, 3, 1])
        assert(result == 2)
    }

    func test2() {
        let result = solution.findShortestSubArray([1, 2, 2, 3, 1, 4, 2])
        assert(result == 6)
    }
    func test3() {
        let result = solution.findShortestSubArray([1, 2, 2])
        assert(result == 2)
    }
    func test4() {
        let result = solution.findShortestSubArray([1, 1, 2])
        assert(result == 2)
    }

}
