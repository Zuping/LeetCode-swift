//
//  Solution645Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution645Test: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func test1() {
        let solution = Solution645()
        let result = solution.findErrorNums([1,2,2,4])
        assert(result[0] == 2 && result[1] == 3)
    }
    
    func test2() {
        let solution = Solution645()
        let result = solution.findErrorNums([1,2,3,4,4])
        assert(result[0] == 4 && result[1] == 5)
    }

    func test3() {
        let solution = Solution645()
        let result = solution.findErrorNums([2,3,4,4,5])
        assert(result[0] == 4 && result[1] == 1)
    }
    
    func test4() {
        let solution = Solution645()
        let result = solution.findErrorNums([1,1,2,3,4])
        assert(result[0] == 1 && result[1] == 5)
    }

}
