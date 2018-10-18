//
//  Solution89Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution89Test: XCTestCase {
    func test1() {
        let result = Solution89().grayCode(2)
        assert(result == [0, 1, 3, 2])
    }
    func test2() {
        let result = Solution89().grayCode(3)
        assert(result == [0, 1, 3, 2, 6, 7, 5, 4])
    }
    func test3() {
        let result = Solution89().grayCode(1)
        assert(result == [0, 1])
    }
    func test4() {
        let result = Solution89().grayCode(0)
        assert(result == [0])
    }

}
