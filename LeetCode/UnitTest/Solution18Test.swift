//
//  Solution18Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution18Test: XCTestCase {

    let solution = Solution18()

    func testExample() {
        let result = solution.fourSum([1, 0, -1, 0, -2, 2], 0)
        assert(result.count == 3)
    }

}
