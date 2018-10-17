//
//  Solution31Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution31Test: XCTestCase {

    func test1() {
        var array = [1, 2, 3]
        Solution31().nextPermutation(&array)
        assert(array == [1, 3, 2])
    }
    
    func test2() {
        var array = [1, 3, 4, 2]
        Solution31().nextPermutation(&array)
        assert(array == [1, 4, 2, 3])
    }
    
    func test3() {
        var array = [1, 3, 5, 4, 2]
        Solution31().nextPermutation(&array)
        assert(array == [1, 4, 2, 3, 5])
    }

}
