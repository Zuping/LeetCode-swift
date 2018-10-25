//
//  Solution697.swift
//  LeetCode
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution697: NSObject {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var indices = [Int](0..<nums.count)
        indices.sort(by: {aVal, bVal in
            if nums[aVal] != nums[bVal] {
                return nums[aVal] < nums[bVal]
            } else {
                return aVal < bVal
            }
        })
        var minLength = Int.max, degree = 0, tmpDegree = 1
        for idx in 1...indices.count {
            if idx != nums.count && nums[indices[idx]] == nums[indices[idx - 1]] {
                tmpDegree += 1
            } else {
                if tmpDegree >= degree {
                    let tmpLength = indices[idx - 1] - indices[idx - tmpDegree] + 1
                    if tmpDegree > degree {
                        minLength = tmpLength
                    } else {
                        minLength = min(minLength, tmpLength)
                    }
                    degree = tmpDegree
                }
                tmpDegree = 1
            }
        }
        return minLength
    }
}
