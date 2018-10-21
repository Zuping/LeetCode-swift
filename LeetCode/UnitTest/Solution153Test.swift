//
//  Solution153Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution153Test: XCTestCase {

    func test1() {
        let result = Solution153().findMin([4, 5, 6, 7, 0, 1, 2])
        assert(result == 0)
    }
    func test2() {
        let result = Solution153().findMin([0, 1, 2, 4, 5, 6, 7])
        assert(result == 0)
    }
    func test3() {
        let result = Solution153().findMin([3, 1])
        assert(result == 1)
    }

}
