//
//  Solution137Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution137Test: XCTestCase {

    func test1() {
        let s = Solution137()
        let res = s.singleNumber([2,2,3,2])
        assert(res == 3)
    }
    
    func test2() {
        let s = Solution137()
        let res = s.singleNumber([4,4,100,4])
        assert(res == 100)
    }
    
    func test3() {
        let s = Solution137()
        let res = s.singleNumber([-1,-1,1,-1])
        assert(res == 1)
    }

    func test4() {
        let s = Solution137()
        let res = s.singleNumber([1,1,-1,1])
        assert(res == -1)
    }
}
