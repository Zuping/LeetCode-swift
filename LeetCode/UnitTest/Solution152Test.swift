//
//  Solution152Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution152Test: XCTestCase {

    func test1() {
        let result = Solution152().maxProduct([2, 3, -2, 4])
        assert(result == 6)
    }
    func test2() {
        let result = Solution152().maxProduct([3, -1, 4])
        assert(result == 4)
    }
    func test3() {
        let result = Solution152().maxProduct([0, 2])
        assert(result == 2)
    }

    func test4() {
        let result = Solution152().maxProduct([-2, 0, -1])
        assert(result == 0)
    }
}
