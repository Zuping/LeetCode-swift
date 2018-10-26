//
//  Solution621Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution621Test: XCTestCase {

    let solution = Solution621()

    func test1() {
        let tasks = Array("AAABBB")
        assert(solution.leastInterval(tasks, 2) == 8)
    }

    func test2() {
        let tasks = Array("AAABBB")
        assert(solution.leastInterval(tasks, 0) == 6)
    }

    func test3() {
        let tasks = Array("AAAAAABCDEFG")
        assert(solution.leastInterval(tasks, 2) == 16)
    }

}
