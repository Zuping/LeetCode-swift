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
}
