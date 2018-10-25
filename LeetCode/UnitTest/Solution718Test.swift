//
//  Solution718Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution718Test: XCTestCase {

    let solution = Solution718()

    func test1() {
        let result = solution.findLength([1, 2, 3, 2, 1], [3, 2, 1, 4, 7])
        assert(result == 3)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
