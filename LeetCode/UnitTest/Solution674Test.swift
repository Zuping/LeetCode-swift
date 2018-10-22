//
//  Solution674Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution674Test: XCTestCase {

    func test1() {
        let result = Solution674().findLengthOfLCIS([1, 3, 5, 4, 7])
        assert(result == 3)
    }
    func test2() {
        let result = Solution674().findLengthOfLCIS([2, 2, 2, 2, 2])
        assert(result == 1)
    }
    func test3() {
        let result = Solution674().findLengthOfLCIS([1])
        assert(result == 1)
    }
    func test4() {
        let result = Solution674().findLengthOfLCIS([])
        assert(result == 0)
    }

}
