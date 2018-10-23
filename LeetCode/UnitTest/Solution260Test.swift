//
//  Solution260Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution260Test: XCTestCase {

    func test1() {
        let result = Solution260().singleNumber([1, 2, 1, 3, 2, 5]).sorted()
        assert(result == [3, 5])
    }
    func test2() {
        let result = Solution260().singleNumber([3, 5]).sorted()
        assert(result == [3, 5])
    }

}
