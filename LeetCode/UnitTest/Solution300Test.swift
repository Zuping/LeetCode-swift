//
//  Solution300Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution300Test: XCTestCase {

    func test1() {
        let result = Solution300().lengthOfLIS([10, 9, 2, 5, 3, 7, 101, 18])
        assert(result == 4)
    }
    
    func test2() {
        let result = Solution300().lengthOfLIS([])
        assert(result == 0)
    }
    
    func test3() {
        let result = Solution300().lengthOfLIS([1, 2])
        assert(result == 2)
    }
    func test4() {
        let result = Solution300().lengthOfLIS([-2, -1])
        assert(result == 2)
    }

}
