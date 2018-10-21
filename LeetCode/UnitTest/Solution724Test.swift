//
//  Solution724Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution724Test: XCTestCase {

    func test1() {
        let result = Solution724().pivotIndex([1, 7, 3, 6, 5, 6])
        assert(result == 3)
    }
    
    func test2() {
        let result = Solution724().pivotIndex([1, 2, 3])
        assert(result == -1)
    }

}
