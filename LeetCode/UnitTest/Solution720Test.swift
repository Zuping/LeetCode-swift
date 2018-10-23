//
//  Solution720Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution720Test: XCTestCase {

    func test1() {
        let result = Solution720().longestWord(["w", "wo", "wor", "worl", "world"])
        assert(result == "world")
    }

    func test2() {
        let result = Solution720().longestWord(["a", "banana", "app", "appl", "ap", "apply", "apple"])
        assert(result == "apple")
    }

    func test3() {
        let result = Solution720().longestWord([])
        assert(result == "")
    }

}
