//
//  Solution33Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution33Test: XCTestCase {

    func test1() {
        let result = Solution33().search([4, 5, 6, 7, 0, 1, 2], 0)
        assert(result == 4)
    }
    
    func test2() {
        let result = Solution33().search([4, 5, 6, 7, 0, 1, 2], 3)
        assert(result == -1)
    }
    func test3() {
        let result = Solution33().search([4, 5, 6, 7, 0, 1, 2], 4)
        assert(result == 0)
    }
    func test4() {
        let result = Solution33().search([], 4)
        assert(result == -1)
    }
    func test5() {
        let result = Solution33().search([4, 5, 6, 7, 0, 1, 2], 2)
        assert(result == 6)
    }

    func test6() {
        let result = Solution33().search([3, 1], 1)
        assert(result == 1)
    }
}
