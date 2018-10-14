//
//  Solution917Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution917Test: XCTestCase {

    func test1() {
        let s = Solution917()
        let rs = s.reverseOnlyLetters("ab-cd")
        assert(rs == "dc-ba")
    }
    
    func test2() {
        let s = Solution917()
        let rs = s.reverseOnlyLetters("a-bC-dEf-ghIj")
        assert(rs == "j-Ih-gfE-dCba")
    }
    
    func test3() {
        let s = Solution917()
        let rs = s.reverseOnlyLetters("Test1ng-Leet=code-Q!")
        assert(rs == "Qedo1ct-eeLg=ntse-T!")
    }
}
