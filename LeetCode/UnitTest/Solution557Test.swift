//
//  Solution557Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution557Test: XCTestCase {

    func test1() {
        let result = Solution557().reverseWords("Let's take LeetCode contest")
        assert(result == "s'teL ekat edoCteeL tsetnoc")
    }

    func test4() {
        let result = Solution557().reverseWords("a")
        assert(result == "a")
    }

    func test5() {
        let result = Solution557().reverseWords("")
        assert(result == "")
    }
}
