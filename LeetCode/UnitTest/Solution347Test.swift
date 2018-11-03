//
//  Solution347Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/2/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution347Test: XCTestCase {

    let solution = Solution347()

    func test1() {
        let result = solution.topKFrequent([1,1,1,2,2,3], 2)
        assert(result == [1,2])
    }

    func test2() {
        let result = solution.topKFrequent([1], 1)
        assert(result == [1])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
