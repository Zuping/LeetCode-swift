//
//  Solution155Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/2/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution155Test: XCTestCase {



    func test1() {
        let stack = MinStack()
        stack.push(0)
        stack.push(1)
        stack.push(0)
        stack.getMin()
        stack.pop()
        stack.getMin()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
