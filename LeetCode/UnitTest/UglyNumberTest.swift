//
//  UglyNumberTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/13/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class UglyNumberTest: XCTestCase {

    let solution = UglyNumber()

    func test1() {
        let primes = [7,11,17,23,29,31,43,47,53,67,71,73,79,89,101,113,127,131,149,151,157,163,167,179,181,199,211,223,227,251]
        assert(solution.nthSuperUglyNumber(700, primes) == 32)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
