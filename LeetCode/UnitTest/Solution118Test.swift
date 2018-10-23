//
//  Solution118Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution118Test: XCTestCase {

    func test1() {
        let result = Solution118().generate(6)
        assert(result.count == 6)
    }

    func test2() {
        let result = Solution118().generate(0)
        assert(result.count == 0)
    }

}
