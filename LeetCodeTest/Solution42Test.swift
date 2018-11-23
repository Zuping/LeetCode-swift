//
//  Solution42Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution42Test: XCTestCase {

    let solution = Solution42()

    func test1() {
        assert(solution.trap_stack([0,1,0,2,1,0,1,3,2,1,2,1]) == 6)
        assert(solution.trap([0,1,0,2,1,0,1,3,2,1,2,1]) == 6)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
