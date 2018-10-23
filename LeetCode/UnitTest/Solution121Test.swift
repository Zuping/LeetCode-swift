//
//  Solution121Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution121Test: XCTestCase {

    func test1() {
        let result = Solution121().maxProfit([7, 1, 5, 3, 6, 4])
        assert(result == 5)
    }

    func test2() {
        let result = Solution121().maxProfit([7, 6, 4, 3, 1])
        assert(result == 0)
    }

    func test3() {
        let result = Solution121().maxProfit([7])
        assert(result == 0)
    }

}
