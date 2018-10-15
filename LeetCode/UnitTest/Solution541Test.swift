//
//  Solution541Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution541Test: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test1() {
        let s = Solution541()
        let rs = s.reverseStr("abcdefg", 2)
        assert(rs == "bacdfeg")
    }
    
    func test2() {
        let s = Solution541()
        let rs = s.reverseStr("abcdefg", 3)
        assert(rs == "cbadefg")
    }
    
    func test3() {
        let s = Solution541()
        let rs = s.reverseStr("ba", 1)
        assert(rs == "ba")
    }
    
    func test4() {
        let s = Solution541()
        let rs = s.reverseStr("hyzqyljrnigxvdtneasepfahmtyhlohwxmkqcdfehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqlimjkfnqcqnajmebeddqsgl", 39)
        assert(rs == "fdcqkmxwholhytmhafpesaentdvxginrjlyqzyhehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqllgsqddebemjanqcqnfkjmi")
    }

}
