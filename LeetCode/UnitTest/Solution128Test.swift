//
//  Solution128Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution128Test: XCTestCase {

    func test1() {
        let result = Solution128().longestConsecutive([100, 4, 200, 1, 3, 2])
        assert(result == 4)
    }

    func test2() {
        let result = Solution128().longestConsecutive([-1,1,0])
        assert(result == 3)
    }

}
