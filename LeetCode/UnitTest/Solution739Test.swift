//
//  Solution739Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution739Test: XCTestCase {

    func test1() {
        let solution = Solution739()
        let result = solution.dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73])
        let expectedResult = [1, 1, 4, 2, 1, 1, 0, 0]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }

    func test2() {
        let solution = Solution739()
        let result = solution.dailyTemperatures([89, 62, 70, 58, 47, 47, 46, 76, 100, 70])
        let expectedResult = [8, 1, 5, 4, 3, 2, 1, 1, 0, 0]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }

}
