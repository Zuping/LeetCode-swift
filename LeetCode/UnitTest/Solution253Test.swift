//
//  Solution253Test.swift
//  LeetCodeTest
//
//  Created by zuping on 11/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution253Test: XCTestCase {

    let solution = Solution253()

    func test1() {
//        [[0, 30],[5, 10],[15, 20]]
        let intervals = [
            Interval(0, 30),
            Interval(5, 10),
            Interval(15, 20)
        ]
        assert(solution.minMeetingRooms(intervals) == 2)
    }

    func test2() {
        // [[7,10],[2,4]]
        let intervals = [
            Interval(7, 10),
            Interval(2, 4)
        ]
        assert(solution.minMeetingRooms(intervals) == 1)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
