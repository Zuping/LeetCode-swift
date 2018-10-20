//
//  Solution40Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/18/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution40Test: XCTestCase {

    func test1() {
        let result = Solution40().combinationSum2([10,1,2,7,6,1,5], 8)
        assert(result.count == 4)
    }
    
    func test2() {
        let result = Solution40().combinationSum2([2, 5,2, 1, 2], 5)
        assert(result.count == 2)
    }

}
