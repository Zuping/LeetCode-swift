//
//  Solution273Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution273Test: XCTestCase {

    let solution = Solution273()

    func test1() {
        let result = solution.numberToWords(123)
        assert(result == "One Hundred Twenty Three")
    }

    func test2() {
        let result = solution.numberToWords(12345)
        assert(result == "Twelve Thousand Three Hundred Forty Five")
    }

    func test3() {
        let result = solution.numberToWords(1234567)
        assert(result == "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven")
    }

    func test4() {
        let result = solution.numberToWords(1234567891)
        assert(result == "One Billion Two Hundred Thirty Four Million Five Hundred Sixty Seven Thousand Eight Hundred Ninety One")
    }

}
