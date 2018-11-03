//
//  SolutionEasyTest.swift
//  LeetCodeTest
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionEasyTest: XCTestCase {

    let solution = SolutionEasy()

    func test20_1() {
        let result = solution.isValid("{[]}")
        assert(result == true)
    }
    func test20_2() {
        let result = solution.isValid("()[]{}")
        assert(result == true)
    }
    func test20_3() {
        let result = solution.isValid("(]")
        assert(result == false)
    }
    func test20_4() {
        let result = solution.isValid("([)]")
        assert(result == false)
    }

    // LeetCode 88. Merge Sorted Array
    func test88_1() {
        var nums1 = [1, 2, 3, 0, 0, 0]
        let nums2 = [2, 5, 6]
        solution.merge(&nums1, 3, nums2, 3)
        assert(nums1 == [1, 2, 2, 3, 5, 6])
    }
    func test88_2() {
        var nums1 = [1, 2, 3, 0, 0, 0]
        let nums2 = [4, 5, 6]
        solution.merge(&nums1, 3, nums2, 3)
        assert(nums1 == [1, 2, 3, 4, 5, 6])
    }
    func test88_3() {
        var nums1 = [0]
        let nums2 = [1]
        solution.merge(&nums1, 0, nums2, 1)
        assert(nums1 == [1])
    }

    // LeetCode 38. Count and Say
    func test38_1() {
        let result = solution.countAndSay(4)
        assert(result == "1211")
    }
    func test38_2() {
        let result = solution.countAndSay(5)
        assert(result == "111221")
    }
    func test38_3() {
        let result = solution.countAndSay(6)
        assert(result == "312211")
    }

    // LeetCode 168. Excel Sheet Column Title
    func test168_1() {
        assert(solution.convertToTitle(130) == "DZ")
        assert(solution.convertToTitle1(52) == "AZ")
        assert(solution.convertToTitle1(26) == "Z")
        assert(solution.convertToTitle1(28) == "AB")
        assert(solution.convertToTitle1(701) == "ZY")
        assert(solution.convertToTitle1(100) == "CV")
    }

    // 171. Excel Sheet Column Number
    func test171_1() {
        assert(solution.titleToNumber("ZZ") == 702)
        assert(solution.titleToNumber("AZ") == 52)
        assert(solution.titleToNumber("Z") == 26)
        assert(solution.titleToNumber("AB") == 28)
        assert(solution.titleToNumber("ZY") == 701)
    }

    // 415. Add Strings
    func test415_1() {
        assert(solution.addStrings("0", "0") == "0")
        assert(solution.addStrings("8", "9") == "17")
        assert(solution.addStrings("11", "9") == "20")
    }

    // 61. Rotate List
    func test61_1() {
        let head = ListNode.buildList([1])
        let result = solution.rotateRight(head, 0)
        assert(ListNode.isEqualLinkedList(head!, result!))
    }

    // 189. Rotate Array
    func test189_1() {
        var arr = [1,2,3,4,5,6,7]
        solution.rotate(&arr, 3)
    }

    // 414. Third Maximum Number
    func test414_1() {
        assert(solution.thirdMax([3, 2, 1]) == 1)
        assert(solution.thirdMax([1, 2]) == 2)
        assert(solution.thirdMax([2, 2, 3, 1]) == 1)
    }

    // 186. Reverse Words in a String II
    func test186_1() {
        var str = Array("the sky is blue")
        solution.reverseWords(&str)
    }

    // 716. Max Stack
    func test716() {
        let maxStack = MaxStack()
        maxStack.push(5)
        maxStack.push(1)
        maxStack.popMax()
        maxStack.peekMax()
    }

    // 451. Sort Characters By Frequency
    func test451() {
        assert(solution.frequencySort("tree") == "eert")
    }
}
