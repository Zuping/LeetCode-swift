//
//  solutionRomanIntegerTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class solutionRomanIntegerTest: XCTestCase {

    let solution = solutionRomanInteger()

    func test1() {
        assert(solution.romanToInt("MCMXCIV") == 1994)
        assert(solution.romanToInt("LVIII") == 58)
        assert(solution.romanToInt("IX") == 9)
        assert(solution.romanToInt("III") == 3)
    }

    func test2() {
        assert(solution.intToRoman(1994) == "MCMXCIV")
        assert(solution.intToRoman(58) == "LVIII")
        assert(solution.intToRoman(9) == "IX")
        assert(solution.intToRoman(3) == "III")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
