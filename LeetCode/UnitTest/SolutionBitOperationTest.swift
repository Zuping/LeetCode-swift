//
//  SolutionBitOperationTest.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionBitOperationTest: XCTestCase {

    let solution = SolutionBitOperation()

    func test461_1() {
        let result = solution.hammingDistance(1, 4)
        assert(result == 2)
    }
    
    func test477_1() {
        let result = solution.totalHammingDistance([4, 14, 2])
        assert(result == 6)
    }

}
