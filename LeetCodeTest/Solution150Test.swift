//
//  Solution150Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution150Test: XCTestCase {

    let solution = Solution150()

    func test1() {
        assert(solution.evalRPN(["2", "1", "+", "3", "*"]) == 9)
    }
    
    func test2() {
        assert(solution.evalRPN(["4", "13", "5", "/", "+"]) == 6)
    }
    
    func test3() {
        assert(solution.evalRPN(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]) == 22)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
