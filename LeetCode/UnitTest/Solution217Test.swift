//
//  Solution217Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/23/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution217Test: XCTestCase {
    let solution = Solution217()

    func test1() {
        let result = solution.containsDuplicate([1, 2, 3, 1])
        assert(result == true)
    }
    func test2() {
        let result = solution.containsDuplicate([1, 2, 3, 4])
        assert(result == false)
    }
    func test3() {
        let result = solution.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])
        assert(result == true)
    }
}
