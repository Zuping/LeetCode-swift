//
//  Solution200Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/29/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution200Test: XCTestCase {

    let solution = Solution200()

    func test1() {
        let grid = [Array("11110"), Array("11010"), Array("11000"), Array("00000")]
        assert(solution.numIslands(grid) == 1)
    }

    func test2() {
        let grid = [Array("11000"), Array("11000"), Array("00100"), Array("00011")]
        assert(solution.numIslands(grid) == 3)
    }

}
