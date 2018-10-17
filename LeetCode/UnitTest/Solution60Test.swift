//
//  Solution60Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution60Test: XCTestCase {

    func test1() {
        let result = Solution60().getPermutation(3, 3)
        assert(result == "213")
    }

    func test2() {
        let result = Solution60().getPermutation(4, 9)
        assert(result == "2314")
    }

    func test3() {
        let result = Solution60().getPermutation(4, 2)
        assert(result == "1243")
    }
}
