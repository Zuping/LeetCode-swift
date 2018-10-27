//
//  Solution78Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution78Test: XCTestCase {

    let solution = Solution78()

    func test1() {
        let result = solution.subsets([1,2,3])
        assert(result.count == 8)
    }
    
    func test2() {
        let result = solution.subsets([])
        assert(result.count == 0)
    }
    
    func test3() {
        let result = solution.subsets([1])
        assert(result.count == 2)
    }

}
