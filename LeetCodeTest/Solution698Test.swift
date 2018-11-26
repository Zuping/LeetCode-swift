//
//  Solution698Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution698Test: XCTestCase {

    let solution = Solution698()

    func test1() {
        let nums = [2,6,16,13,3,4,1,1,2,12]
        let k = 3
        assert(solution.canPartitionKSubsets(nums, k) == true)
    }

    func test416_1() {
        let nums = [1, 5, 11, 5]
        assert(solution.canPartition(nums) == true)
    }

}
