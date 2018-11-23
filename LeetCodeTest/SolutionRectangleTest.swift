//
//  SolutionRectangleTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionRectangleTest: XCTestCase {

    let solution = SolutionRectangle()

    func test84_1() {
        let heights = [2,1,5,6,2,3]
        assert(solution.largestRectangleArea(heights) == 10)
    }

    func test84_2() {
        let heights = [2,1,2]
        assert(solution.largestRectangleArea(heights) == 3)
    }

    // 85. Maximal Rectangle
    func test85() {
        let matrix = [
            Array("10100"),
            Array("10111"),
            Array("11111"),
            Array("10010")
        ]
        assert(solution.maximalRectangle(matrix) == 6)
    }

}
