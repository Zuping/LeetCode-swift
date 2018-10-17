//
//  Solution46Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution46Test: XCTestCase {

    func test1() {
        let result = Solution46().permute2([1, 2, 3])
        let expectedResult = [[1, 2, 3], [1, 3, 2], [2, 1, 3],
                              [2, 3, 1], [3, 1, 2], [3, 2, 1]]
        for idx in 0..<result.count {
            assert(result[idx] == expectedResult[idx])
        }
    }
    
    func test2() {
        let result = Solution46().permute([])
        assert(result.count == 0)
    }
    
    func test3() {
        let result = Solution46().permute([1])
        assert(result.first! == [1])
    }

}
