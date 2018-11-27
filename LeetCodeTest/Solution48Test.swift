//
//  Solution48Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/26/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution48Test: XCTestCase {

    let solution = Solution48()

    func test1() {
        var arr = [
            [1,2,3],
            [4,5,6],
            [7,8,9]
        ]
        solution.rotate(&arr)
        let res = [
            [7,4,1],
            [8,5,2],
            [9,6,3]
        ]
        assert(arr == res)
    }

    func test2() {
        var arr = [
            [ 5, 1, 9,11],
            [ 2, 4, 8,10],
            [13, 3, 6, 7],
            [15,14,12,16]
        ]
        solution.rotate(&arr)
        let res = [
            [15,13, 2, 5],
            [14, 3, 4, 1],
            [12, 6, 8, 9],
            [16, 7,10,11]
        ]
        assert(arr == res)
    }

}
