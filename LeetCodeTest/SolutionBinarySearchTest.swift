//
//  SolutionBinarySearchTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionBinarySearchTest: XCTestCase {

    let solution = SolutionBinarySearch()

    func test240() {
        let matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]
        assert(solution.searchMatrix(matrix, 20))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
