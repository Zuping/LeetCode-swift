//
//  Solution67Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution67Test: XCTestCase {

    let solution = Solution67()

    func test1() {
        let result = solution.addBinary("11", "1")
        assert(result == "100")
    }
    func test2() {
        let result = solution.addBinary("1010", "1011")
        assert(result == "10101")
    }

}
