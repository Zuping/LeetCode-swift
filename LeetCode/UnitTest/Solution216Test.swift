//
//  Solution216Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/18/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution216Test: XCTestCase {

    func test1() {
        let result = Solution216().combinationSum3(3, 7)
        assert(result.count == 1)
    }
    
    func test2() {
        let result = Solution216().combinationSum3(3, 9)
        assert(result.count == 3)
    }

}
