//
//  Solution560Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution560Test: XCTestCase {

    func test1() {
        let result = Solution560().subarraySum([1, 1, 1], 2)
        assert(result == 2)
    }

    func test2() {
        let result = Solution560().subarraySum([1, 4, -3], 1)
        assert(result == 2)
    }
    func test3() {
        let result = Solution560().subarraySum([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0)
        assert(result == 55)
    }

}
