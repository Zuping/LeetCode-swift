//
//  Solution17Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/5/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution17Test: XCTestCase {

    let solution = Solution17()

    func test1() {
        let result = solution.letterCombinations("23")
        assert(result.count == 9)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
