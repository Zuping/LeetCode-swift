//
//  Solution9.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution9Test: XCTestCase {
    let solution = Solution9()

    func test1() {
        let result = solution.isPalindrome(121)
        assert(result == true)
    }

    func test2() {
        let result = solution.isPalindrome(-121)
        assert(result == false)
    }
    
    func test3() {
        let result = solution.isPalindrome(10)
        assert(result == false)
    }

}
