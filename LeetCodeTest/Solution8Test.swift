//
//  Solution8Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/26/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution8Test: XCTestCase {

    let solution = Solution8()

    func test1() {
        assert(solution.myAtoi("42") == 42)
        assert(solution.myAtoi("   -42") == -42)
        assert(solution.myAtoi("4193 with words") == 4193)
        assert(solution.myAtoi("words and 987") == 0)
        assert(solution.myAtoi("-91283472332") == -2147483648)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
