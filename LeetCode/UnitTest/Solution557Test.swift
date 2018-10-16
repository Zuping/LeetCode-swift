//
//  Solution557Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution557Test: XCTestCase {

    func test1() {
        let s = Solution557()
        let rs = s.reverseWords("Let's take LeetCode contest")
        assert(rs == "s'teL ekat edoCteeL tsetnoc")
    }
    
    
    func test4() {
        let s = Solution557()
        let rs = s.reverseWords("a")
        assert(rs == "a")
    }
    
    func test5() {
        let s = Solution557()
        let rs = s.reverseWords("")
        assert(rs == "")
    }
    
    func test6() {
        let s = Solution557()
        let rs = s.reverseWords("  ")
        assert(rs == "  ")
    }

}
