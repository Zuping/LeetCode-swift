//
//  Solution56Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution56Test: XCTestCase {

    let solution = Solution56()

    func test1() {
        let array = [[1,3],[2,6],[8,10],[15,18]]
        var intervals: [Interval] = []
        for subArray in array {
            intervals.append(Interval(subArray[0], subArray[1]))
        }
        let result = solution.merge(intervals)
        assert(result.count == 3)
    }

    func test2() {
        let array = [[1,4],[4,5]]
        var intervals: [Interval] = []
        for subArray in array {
            intervals.append(Interval(subArray[0], subArray[1]))
        }
        let result = solution.merge(intervals)
        assert(result.count == 1)
    }

    func test3() {
        let array: [[Int]] = []
        var intervals: [Interval] = []
        for subArray in array {
            intervals.append(Interval(subArray[0], subArray[1]))
        }
        let result = solution.merge(intervals)
        assert(result.count == 0)
    }

    func test4() {
        let array: [[Int]] = [[1,4],[2,3]]
        var intervals: [Interval] = []
        for subArray in array {
            intervals.append(Interval(subArray[0], subArray[1]))
        }
        let result = solution.merge(intervals)
        assert(result.count == 1)
    }

}
