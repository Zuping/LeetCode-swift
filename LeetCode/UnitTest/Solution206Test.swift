//
//  Solution206Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution206Test: XCTestCase {

    let solution = Solution206()
    func test1() {
        let array = [1, 2, 3, 4, 5]
        let list = ListNode.buildList(array)
        let expectedReversedList = ListNode.buildList(array.reversed())
        let reversedList = solution.reverseList(list)
        assert(ListNode.isEqualLinkedList(expectedReversedList!, reversedList!))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
