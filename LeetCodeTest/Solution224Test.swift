//
//  Solution224Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution224Test: XCTestCase {

    let solution = Solution224()

    func test1() {
        assert(solution.calculate("(1+(4+5+2)-3)+(6+8)") == 23)
    }
    
    func test2() {
        assert(solution.calculate("1-(5)") == -4)
    }
    
    func test3() {
        assert(solution.calculate(" 2-1 + 2 ") == 3)
    }

}
