//
//  Solution496Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution496Test: XCTestCase {

    func test1() {
        let solution = Solution496()
        let result = solution.nextGreaterElement([4, 1, 2], [1, 3, 4, 2])
        let expectedResult = [-1, 3, -1]
        for idx in 0...result.count - 1 {
            assert(result[i] == expectedResult[idx])
        }
    }

    func test2() {
        let solution = Solution496()
        let result = solution.nextGreaterElement([2, 4], [1, 2, 3, 4])
        let expectedResult = [3, -1]
        for idx in 0...result.count - 1 {
            assert(result[i] == expectedResult[idx])
        }
    }

    func test3() {
        let solution = Solution496()
        let result = solution.nextGreaterElement([], [1, 2, 3, 4])
        assert(result.count == 0)
    }

}
