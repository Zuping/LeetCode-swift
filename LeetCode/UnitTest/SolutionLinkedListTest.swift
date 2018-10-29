//
//  SolutionLinkedListTest.swift
//  LeetCodeTest
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionLinkedListTest: XCTestCase {

    let solution = SolutionLinkedList()

    func test21_1() {
        let list1 = ListNode.buildList([1, 2, 4])
        let list2 = ListNode.buildList([1, 3, 4])
        let expectedResult = ListNode.buildList([1, 1, 2, 3, 4, 4])
        let result = solution.mergeTwoLists(list1, list2)
        assert(ListNode.isEqualLinkedList(expectedResult!, result!))
    }

    func test21_2() {
        let list1 = ListNode.buildList([1, 2, 4])
        let list2 = ListNode.buildList([])
        let expectedResult = ListNode.buildList([1, 2, 4])
        let result = solution.mergeTwoLists(list1, list2)
        assert(ListNode.isEqualLinkedList(expectedResult!, result!))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
