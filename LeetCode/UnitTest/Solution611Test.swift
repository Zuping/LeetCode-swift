//
//  Solution611Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution611Test: XCTestCase {

    func test1() {
        let result = Solution611().triangleNumber([2, 2, 3, 4])
        assert(result == 3)
    }

    func test2() {
        let result = Solution611().triangleNumber([2, 3, 4])
        assert(result == 1)
    }
//    func test3() {
//        let result = Solution611().triangleNumber([44,27,49,18,93,53,18,89,54,74,
//                                                   19,69,93,68,17,26,55,23,4,94,
//                                                   27,24,51,67,52,26,13,46,5,17,
//                                                   42,24,60,67,42,35,50,32,47,4,
//                                                   21,32,79,5,28,39,55,25,20,43,
//                                                   59,7,88,49,51,47,43,72,82,1,
//                                                   70,89,65,43,98,81,56,86,49,
//                                                   23,56,77,58,26,5,6,15,91,60,
//                                                   2,6,69,73,22,86,28,94,71,32,
//                                                   5,19,6,89,9,60,49,74,7,64,82])
//        assert(result == 0)
//    }

}
