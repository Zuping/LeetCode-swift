//
//  Solution840Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution840Test: XCTestCase {
    let solution = Solution840()
    func test1() {
        let array = [[1, 4, 3, 8, 4],
                     [1, 9, 5, 1, 9],
                     [1, 2, 7, 6, 2]]
        let result = solution.numMagicSquaresInside(array)
        assert(result == 1)
    }
    func test2() {
        let array = [[1, 4, 3, 8],
                     [1, 9, 5, 1],
                     [1, 2, 7, 6]]
        let result = solution.numMagicSquaresInside(array)
        assert(result == 1)
    }
    func test3() {
        let array = [[1, 4, 3, 8],
                     [1, 4, 3, 8],
                     [1, 9, 5, 1],
                     [1, 2, 7, 6]]
        let result = solution.numMagicSquaresInside(array)
        assert(result == 1)
    }

}
