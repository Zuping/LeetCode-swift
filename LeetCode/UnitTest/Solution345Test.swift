//
//  Solution345Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution345Test: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test1() {
        let s = Solution345()
        let rs = s.reverseVowels("hello")
        assert(rs == "holle")
    }
    
    func test2() {
        let s = Solution345()
        let rs = s.reverseVowels("leetcode")
        assert(rs == "leotcede")
    }

}
