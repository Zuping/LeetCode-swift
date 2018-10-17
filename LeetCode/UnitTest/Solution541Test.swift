//
//  Solution541Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution541Test: XCTestCase {

    func test1() {
        let result = Solution541().reverseStr("abcdefg", 2)
        assert(result == "bacdfeg")
    }

    func test2() {
        let result = Solution541().reverseStr("abcdefg", 3)
        assert(result == "cbadefg")
    }

    func test3() {
        let result = Solution541().reverseStr("ba", 1)
        assert(result == "ba")
    }

    func test4() {
        let result = Solution541().reverseStr("hyzqyljrnigxvdtneasepfahmtyhlohwxmkqcdfehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqlimjkfnqcqnajmebeddqsgl", 39)
        assert(result == "fdcqkmxwholhytmhafpesaentdvxginrjlyqzyhehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqllgsqddebemjanqcqnfkjmi")
    }

}
