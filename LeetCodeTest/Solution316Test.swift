//
//  Solution316Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution316Test: XCTestCase {

    let solution = Solution316()

    func test1() {
        let a = 1
        let b = 2
        print(Float(a) / Float(b))
        assert(solution.removeDuplicateLetters("bcabc") == "abc")
    }
    
    func test2() {
        assert(solution.removeDuplicateLetters("cbacdcbc") == "acdb")
    }

}
