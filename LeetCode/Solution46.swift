//
//  Solution46.swift
//  LeetCode
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution46: NSObject {
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else {
            return []
        }
        var result: [[Int]] = []
        var currentRes = Array(repeating: 0, count: nums.count)
        var visited = Array(repeating: false, count: nums.count)
        permuteRecursion(0, nums: nums, currentRes: &currentRes, visited: &visited, result: &result)
        return result
    }

    func permuteRecursion(_ index: Int, nums: [Int],
                          currentRes: inout [Int],
                          visited: inout [Bool],
                          result: inout [[Int]]) {
        if index == nums.count {
            result.append(currentRes)
            return
        }

        for idx in 0..<nums.count where !visited[idx] {
            visited[idx] = true
            currentRes[index] = nums[idx]
            permuteRecursion(index + 1, nums: nums, currentRes: &currentRes, visited: &visited, result: &result)
            visited[idx] = false
        }
    }
    
    // 两两交换
    func permute2(_ nums: [Int]) -> [[Int]] {
        var nums = nums
        var result = [[Int]]()
        permuteRecursive(&nums, 0, &result)
        return result
    }
    
    func permuteRecursive(_ nums: inout [Int], _ begin: Int, _ result: inout [[Int]] ) {
        if begin >= nums.count {
            result.append(nums)
            return
        }
        
        for idx in begin..<nums.count {
            nums.swapAt(begin, idx)
            permuteRecursive(&nums, begin+1, &result)
            nums.swapAt(begin, idx)
        }
    }
}
