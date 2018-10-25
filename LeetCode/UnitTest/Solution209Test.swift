//
//  Solution209Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution209Test: XCTestCase {
    let solution = Solution209()
    func test1() {
        let result = solution.minSubArrayLen(7, [2, 3, 1, 2, 4, 3])
        assert(result == 2)
    }
    func test2() {
        let result = solution.minSubArrayLen(6, [])
        assert(result == 0)
    }
    func test3() {
        let result = solution.minSubArrayLen(3, [2, 3, 1, 2, 4, 3])
        assert(result == 1)
    }
    func test4() {
        let result = solution.minSubArrayLen(15, [1, 2, 3, 4, 5])
        assert(result == 5)
    }
    func test5() {
        let result = solution.minSubArrayLen(15, [1, 1])
        assert(result == 0)
    }

}
