//
//  Solution43Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/31/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution43Test: XCTestCase {

    let solution = Solution43()

    func test1() {
        let num1 = "2", num2 = "3"
        assert(solution.multiply(num1, num2) == "6")
    }

    func test2() {
        let num1 = "123", num2 = "456"
        assert(solution.multiply(num1, num2) == "56088")
    }

    func test3() {
        let num1 = "0", num2 = "456"
        assert(solution.multiply(num1, num2) == "0")
    }

}
