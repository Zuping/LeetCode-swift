//
//  Solution219Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/23/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution219Test: XCTestCase {

    let solution = Solution219()

    func test1() {
        let result = solution.containsNearbyDuplicate([1, 2, 3, 1], 3)
        assert(result == true)
    }
    func test2() {
        let result = solution.containsNearbyDuplicate([1, 0, 1, 1], 1)
        assert(result == true)
    }
    func test3() {
        let result = solution.containsNearbyDuplicate([1, 2, 3, 1, 2, 3], 2)
        assert(result == false)
    }

}
