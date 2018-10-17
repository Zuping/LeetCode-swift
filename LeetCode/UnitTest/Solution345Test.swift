//
//  Solution345Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution345Test: XCTestCase {

    func test1() {
        let result = Solution345().reverseVowels("hello")
        assert(result == "holle")
    }

    func test2() {
        let result = Solution345().reverseVowels("leetcode")
        assert(result == "leotcede")
    }

}
