//
//  Solution215Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/1/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution215Test: XCTestCase {

    let solution = Solution215()

    func test1() {
        assert(solution.findKthLargest([3,2,1,5,6,4], 2) == 5)
        assert(solution.findKthLargest([3,2,3,1,2,4,5,5,6], 4) == 4)
    }

}
