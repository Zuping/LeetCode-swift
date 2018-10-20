//
//  Solution377Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution377Test: XCTestCase {
    func test1() {
        let result = Solution377().combinationSum4([1, 2, 3], 4)
        assert(result == 7)
    }
    func test2() {
        let result = Solution377().combinationSum4([1, 2], 3)
        assert(result == 3)
    }
    func test3() {
        let result = Solution377().combinationSum4([3, 33, 333], 10000)
        assert(result == 0)
    }
}
