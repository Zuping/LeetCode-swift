//
//  Solution39Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution39Test: XCTestCase {

    func test1() {
        let result = Solution39().combinationSum([2, 3, 6, 7], 7)
        assert(result.count == 2)
    }
    
    func test2() {
        let result = Solution39().combinationSum([2, 3, 5], 8)
        assert(result.count == 3)
    }

}
