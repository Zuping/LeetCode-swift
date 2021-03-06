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

    // 274. H-Index
    func test274() {
        assert(solution.hIndex([3,0,6,1,5]) == 3)
        assert(solution.hIndex([1]) == 1)
    }

    // 275. H-Index
    func test275() {
        assert(solution.hIndexII([0,1,3,5,6]) == 3)
        assert(solution.hIndexII([1]) == 1)
        assert(solution.hIndexII([0]) == 0)
    }

    // 69. Sqrt(x)
    func test69() {
        assert(solution.mySqrt(1) == 1)
        assert(solution.mySqrt(4) == 2)
        assert(solution.mySqrt(8) == 2)
    }

    // 146. LRU Cache
    func test146() {
        let lruCache = LRUCache(2)
        lruCache.put(1, 1)
        lruCache.put(2, 2)
        lruCache.put(3, 3)
//        lruCache.get(2)
    }

    // 50. Pow(x, n)
    func test50() {
        assert(solution.myPow(2.0, 4) == 16)
        assert(solution.myPow(2.0, 10) == 1024.00)
    }

    // 228. Summary Ranges
    func test228() {
        let result1 = solution.summaryRanges([0,1,2,4,5,7])
        assert(result1 == ["0->2","4->5","7"])

        let result2 = solution.summaryRanges([0,2,3,4,6,8,9])
        assert(result2 == ["0","2->4","6","8->9"])

        let result3 = solution.summaryRanges([0])
        assert(result3 == ["0"])
    }

    // 28. Implement strStr()
    func test28() {
        assert(solution.strStr("aaaaa", "ab") == -1)
        assert(solution.strStr("aaaaa", "bba") == -1)
//        assert(solution.strStr("hello", "ll") == 2)
    }

    // 54. Spiral Matrix
    func test54() {
        let arr1 = [[ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ]]
        let result = solution.spiralOrder(arr1)
        assert(result == [1,2,3,6,9,8,7,4,5])

        let arr2 = [[1, 2, 3, 4], [5, 6, 7, 8], [9,10,11,12]]
        let result2 = solution.spiralOrder(arr2)
        assert(result2 == [1,2,3,4,8,12,11,10,9,5,6,7])

        let arr3 = [[3], [2]]
        let result3 = solution.spiralOrder(arr3)
        assert(result3 == [3, 2])
    }

    // 463. Island Perimeter
    func test463() {
        let arr = [[0,1,0,0],
                   [1,1,1,0],
                   [0,1,0,0],
                   [1,1,0,0]]
        let res = solution.islandPerimeter(arr)
        assert(res == 16)
    }

    // 605. Can Place Flowers
    func test605() {
        assert(solution.canPlaceFlowers([1,0,0,0,1,0,0], 2) == true)
        assert(solution.canPlaceFlowers([1,0,0,0,1], 1) == true)
    }

    // 34. Find First and Last Position of Element in Sorted Array
    func test34() {
        assert(solution.searchRange([5,7,7,8,8,10], 8) == [3, 4])
        assert(solution.searchRange([1], 1) == [0, 0])
    }

    // 187. Repeated DNA Sequences
    func test107() {
        solution.findRepeatedDnaSequences("AAAAAAAAAAA")
    }

    // 198. House Robber
    func test198() {
        assert(solution.rob([2,1,1,2]) == 4)
        assert(solution.rob([2,7,9,3,1]) == 12)
        assert(solution.rob([1,2,3,1]) == 4)
    }

    // 406. Queue Reconstruction by Height
    func test406() {
        let queue = [[9,0],[7,0],[1,9],[3,0],[2,7],[5,3],[6,0],[3,4],[6,2],[5,2]]
        let result = solution.reconstructQueue(queue)
        let expectedRes = [[3,0],[6,0],[7,0],[5,2],[3,4],[5,3],[6,2],[2,7],[9,0],[1,9]]
        assert(result == expectedRes)
    }

    // 289. Game of Life
    func test289() {
        var arr = [
            [0,1,0],
            [0,0,1],
            [1,1,1],
            [0,0,0]
        ]
        solution.gameOfLife(&arr)
    }

    // 74. Search a 2D Matrix
    func test74() {
//        let matrix = [
//            [1,   3,  5,  7],
//            [10, 11, 16, 20],
//            [23, 30, 34, 50]
//        ]
//        assert(solution.searchMatrix(matrix, 3) == true)
//        assert(solution.searchMatrix(matrix, 13) == false)
//        assert(solution.searchMatrix(matrix, 34) == true)

        let matrix1 = [[0], [1], [1], [1]]
        assert(solution.searchMatrix(matrix1, 1) == true)
        assert(solution.searchMatrix(matrix1, 2) == false)
    }

    // 739. Daily Temperatures
    func test739() {
        let T = [89,62,70,58,47,47,46,76,100,70]
        let expectedRes = [8,1,5,4,3,2,1,1,0,0]
        assert(solution.dailyTemperatures(T) == expectedRes)
    }

    // 204. Count Primes
    func test284() {
        assert(solution.countPrimes(2) == 0)
        assert(solution.countPrimes(10) == 4)
    }

    // 3. Longest Substring Without Repeating Characters
    func test3() {
        assert(solution.lengthOfLongestSubstring("abcabcbb") == 3)
        assert(solution.lengthOfLongestSubstring("bbbbb") == 1)
        assert(solution.lengthOfLongestSubstring("pwwkew") == 3)
    }

    // 11. Container With Most Water
    func test11_1() {
        let height = [1,8,6,2,5,4,8,3,7]
        assert(solution.maxArea(height) == 49)
    }
    
    // 633. Sum of Square Numbers
    func test633() {
        assert(solution.judgeSquareSum(1) == true)
        assert(solution.judgeSquareSum(4) == true)
        assert(solution.judgeSquareSum(2) == true)
        assert(solution.judgeSquareSum(5) == true)
    }
    
    // 119. Pascal's Triangle II
    func test119() {
        assert(solution.getRow(4) == [1, 4, 6, 4, 1])
        assert(solution.getRow(3) == [1, 3, 3, 1])
    }
    
    // 682. Baseball Game
    func test682() {
        assert(solution.calPoints(["5","2","C","D","+"]) == 30)
        assert(solution.calPoints(["5","-2","4","C","D","9","+","+"]) == 27)
    }

}
