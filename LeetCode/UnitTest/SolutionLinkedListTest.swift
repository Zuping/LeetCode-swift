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

    func test23_1() {
        let list1 = ListNode.buildList([1,4,5])
        let list2 = ListNode.buildList([1,3,4])
        let list3 = ListNode.buildList([2,6])
        let lists = [list1, list2, list3]
        let result = solution.mergeKLists(lists)
        let expectedResult = ListNode.buildList([1,1,2,3,4,4,5,6])
        assert(ListNode.isEqualLinkedList(result!, expectedResult!))
    }

    func test23_2() {
        let list1 = ListNode.buildList([1])
        let list2 = ListNode.buildList([0])
        let lists = [list1, list2]
        let result = solution.mergeKLists(lists)
        let expectedResult = ListNode.buildList([0, 1])
        assert(ListNode.isEqualLinkedList(result!, expectedResult!))
    }

    // 24. Swap Nodes in Pairs
    func test24() {
        let list = ListNode.buildList([1, 2, 3, 4, 5])
        let result = solution.swapPairs(list)
        let expectedRes = ListNode.buildList([2, 1, 4, 3, 5])
        assert(ListNode.isEqualLinkedList(result!, expectedRes!))
    }

    // 25. Reverse Nodes in k-Group
    func test25_1() {
        let list = ListNode.buildList([1, 2, 3, 4, 5])
        let result = solution.reverseKGroup(list, 2)
        let expectedRes = ListNode.buildList([2, 1, 4, 3, 5])
        assert(ListNode.isEqualLinkedList(result!, expectedRes!))
    }

    func test25_2() {
        let list = ListNode.buildList([1, 2, 3, 4, 5])
        let result = solution.reverseKGroup(list, 3)
        let expectedRes = ListNode.buildList([3, 2, 1, 4, 5])
        assert(ListNode.isEqualLinkedList(result!, expectedRes!))
    }

    func test25_3() {
        let list = ListNode.buildList([1,7,3,2,7,0,1,0,0])
        let result = solution.reverseKGroup(list, 4)
        let expectedRes = ListNode.buildList([2,3,7,1,0,1,0,7,0])
        assert(ListNode.isEqualLinkedList(result!, expectedRes!))
    }

    // 92. Reverse Linked List II
    func test92_1() {
        let list = ListNode.buildList([1, 2, 3, 4, 5])
        let result = solution.reverseBetween(list, 2, 4)
        let expectedRes = ListNode.buildList([1, 4, 3, 2, 5])
        assert(ListNode.isEqualLinkedList(result!, expectedRes!))
    }

    func test92_2() {
        let list = ListNode.buildList([1, 2, 3, 4, 5])
        let result = solution.reverseBetween(list, 1, 5)
        let expectedRes = ListNode.buildList([5, 4, 3, 2, 1])
        assert(ListNode.isEqualLinkedList(result!, expectedRes!))
    }
}
