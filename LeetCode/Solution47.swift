//
//  Solution47.swift
//  LeetCode
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution47: NSObject {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else { return [] }
        var result: [[Int]] = []
        var currentRes: [Int] = []
        var visited: [Bool] = Array(repeating: false, count: nums.count)
        var numbers = nums.sorted()
        permuteUniqueRecursion(&numbers, index: 0, result: &result, currentRes: &currentRes, visited: &visited)
        return result
    }
    
    func permuteUniqueRecursion(_ nums: inout [Int], index: Int,
                                result: inout [[Int]], currentRes: inout [Int], visited: inout [Bool]) {
        if index == nums.count {
            result.append(currentRes)
            return
        }
        if index >= nums.count {
            return
        }
        for idx in 0..<nums.count where !visited[idx] {
            if idx > 0 && nums[idx] == nums[idx - 1] && !visited[idx - 1] { continue }
            currentRes.append(nums[idx])
            visited[idx] = true
            permuteUniqueRecursion(&nums, index: index + 1, result: &result, currentRes: &currentRes, visited: &visited)
            currentRes.removeLast()
            visited[idx] = false
        }
    }
}
