//
//  SolutionBitOperation.swift
//  LeetCode
//
//  Created by Zuping Li on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionBitOperation: NSObject {
    // LeetCode 461. Hamming Distance
    func hammingDistance(_ xVal: Int, _ yVal: Int) -> Int {
        var count = 0
        for idx in 0 ..< 32 where ((xVal >> idx) & 1) != ((yVal >> idx) & 1) {
            count += 1
        }
        return count
    }

    // LeetCode 477. Total Hamming Distance
    // http://www.cnblogs.com/grandyang/p/6208062.html
    func totalHammingDistance(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return 0
        }
        var sum = 0
        for idx in 0 ..< 32 {
            var numOfOnes = 0
            for num in nums where (num >> idx) & 1 > 0 {
                numOfOnes += 1
            }
            sum += numOfOnes * (nums.count - numOfOnes)
        }
        return sum
    }
}
