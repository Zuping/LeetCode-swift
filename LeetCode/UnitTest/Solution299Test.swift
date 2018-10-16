//
//  Solution299Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution299Test: XCTestCase {

    func test1() {
        let solution = Solution299()
        let result = solution.getHint("1807", "7810")
        assert(result == "1A3B")
    }

    func test2() {
        let solution = Solution299()
        let result = solution.getHint("1123", "0111")
        assert(result == "1A1B")
    }
    
    func test3() {
        let solution = Solution299()
        let result = solution.getHint("1122", "1222")
        assert(result == "3A0B")
    }

}
