//
//  Solution22Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/5/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution22Test: XCTestCase {

    let solution = Solution22()
    func test1() {
        let result = solution.generateParenthesis(3)
        assert(result.count == 5)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
