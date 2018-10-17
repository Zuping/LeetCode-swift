//
//  Solution503Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution503Test: XCTestCase {

    func test1() {
        let solution = Solution503()
        let result = solution.nextGreaterElements([1, 2, 1])
        let expectedResult = [2, -1, 2]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }

    func test2() {
        let solution = Solution503()
        let result = solution.nextGreaterElements([1, 1, 1])
        let expectedResult = [-1, -1, -1]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }
    func test3() {
        let solution = Solution503()
        let result = solution.nextGreaterElements([])
        assert(result.count == 0)
    }
    func test4() {
        let solution = Solution503()
        let result = solution.nextGreaterElements([5, 4, 3, 2, 1])
        let expectedResult = [-1, 5, 5, 5, 5]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }

    func test5() {
        let solution = Solution503()
        let result = solution.nextGreaterElements([1, 5, 3, 6, 8])
        let expectedResult = [5, 6, 6, 8, -1]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }

    func test6() {
        let solution = Solution503()
        let result = solution.nextGreaterElements([1, 2, 3, 2, 1])
        let expectedResult = [2, 3, -1, 3, 2]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }

    func test7() {
        let solution = Solution503()
        let result = solution.nextGreaterElements([1, 8, -1, -100, -1, 222, 1111111, -111111])
        let expectedResult = [8, 222, 222, -1, 222, 1111111, -1, 1]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }

}
