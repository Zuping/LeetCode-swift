//
//  Solution234Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution234Test: XCTestCase {

    let solution = Solution234()

    func test1() {
        let head = ListNode.buildList([1, 2, 3, 3, 2, 1])
        let result = solution.isPalindrome(head)
        assert(result == true)
    }
    
    func test2() {
        let head = ListNode.buildList([1, 2, 3, 2, 1])
        let result = solution.isPalindrome(head)
        assert(result == true)
    }
    
    func test3() {
        let head = ListNode.buildList([1, 1])
        let result = solution.isPalindrome(head)
        assert(result == true)
    }
    
    func test4() {
        let head = ListNode.buildList([1, 2, 3])
        let result = solution.isPalindrome(head)
        assert(result == false)
    }
    
    func test5() {
        let head = ListNode.buildList([1, 2])
        let result = solution.isPalindrome(head)
        assert(result == false)
    }

}
