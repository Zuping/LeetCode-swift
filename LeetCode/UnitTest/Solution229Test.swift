//
//  Solution229Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution229Test: XCTestCase {

    func test1() {
        for _ in 0..<5 {
            let array = [1, 1, 1, 3, 3, 2, 2, 2].shuffled()
            let result = Solution229().majorityElement(array)
            assert(result.sorted() == [1, 2])
        }
    }

    func test2() {
        let result = Solution229().majorityElement([3, 2, 3])
        assert(result.sorted() == [3])
    }

    func test3() {
        let result = Solution229().majorityElement([1, 2, 2, 3, 2, 1, 1, 3])
        assert(result.sorted() == [1, 2])
    }

}
