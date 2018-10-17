//
//  Solution556Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution556Test: XCTestCase {

    func test1() {
        let solution = Solution556()
        let result = solution.nextGreaterElement(12)
        assert(result == 21)
    }

    func test2() {
        let solution = Solution556()
        let result = solution.nextGreaterElement(1243)
        assert(result == 1324)
    }

    func test3() {
        let solution = Solution556()
        let result = solution.nextGreaterElement(21)
        assert(result == -1)
    }

    func test4() {
        let solution = Solution556()
        let result = solution.nextGreaterElement(1432)
        assert(result == 2134)
    }

    func test5() {
        let solution = Solution556()
        let result = solution.nextGreaterElement(1999999999)
        assert(result == -1)
    }

    func test6() {
        let solution = Solution556()
        let result = solution.nextGreaterElement(230241)
        assert(result == 230412)
    }
}
