//
//  Solution389Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution389Test: XCTestCase {

    func test1() {
        let s = Solution389()
        let rs = s.findTheDifference("abcd", "abcde")
        assert(rs == "e")
    }
    
    func test2() {
        let s = Solution389()
        let rs = s.findTheDifference("abcd", "aebcd")
        assert(rs == "e")
    }


}
