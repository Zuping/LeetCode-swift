//
//  Solution47Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution47Test: XCTestCase {

    func test1() {
        let result = Solution47().permuteUnique([1, 1, 2, 2])
        assert(result.count == 3)
    }
}
