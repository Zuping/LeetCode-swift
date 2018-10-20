//
//  Solution15Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution15Test: XCTestCase {

    func test1() {
        let result = Solution15().threeSum([-1, 0, 1, 2, -1, -4])
        assert(result.count == 2)
    }
    
    func test2() {
        let result = Solution15().threeSum([0, 0, 0, 0])
        assert(result.count == 1)
    }

}
