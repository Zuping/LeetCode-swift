//
//  Solution532Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution532Test: XCTestCase {
    func test1() {
        let result = Solution532().findPairs([3, 1, 4, 1, 5], 2)
        assert(result == 2)
    }
    
    func test2() {
        let result = Solution532().findPairs([1, 2, 3, 4, 5], 1)
        assert(result == 4)
    }
    
    func test3() {
        let result = Solution532().findPairs([1, 3, 1, 5, 4], 0)
        assert(result == 1)
    }
    
    func test4() {
        let result = Solution532().findPairs([1, 3, 1, 5, 4], -1)
        assert(result == 0)
    }

}
