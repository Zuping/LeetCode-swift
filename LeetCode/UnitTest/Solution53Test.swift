//
//  Solution53Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution53Test: XCTestCase {
    func test1() {
        let result = Solution53().maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4])
        assert(result == 6)
    }
    func test2() {
        let result = Solution53().maxSubArray([-1])
        assert(result == -1)
    }
}
