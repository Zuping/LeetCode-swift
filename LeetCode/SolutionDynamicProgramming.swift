//
//  SolutionDynamicProgramming.swift
//  LeetCode
//
//  Created by zuping on 10/29/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionDynamicProgramming: NSObject {
    // LeetCode 139. Word Break
    func wordBreak(_ str: String, _ wordDict: [String]) -> Bool {
        guard wordDict.count > 0 else { return false }
        var dpArray = Array(repeating: false, count: str.count + 1)
        dpArray[0] = true
        var chars = Array(str)
        for idx in 1 ..< chars.count + 1 {
            for jdx in (0 ..< idx).reversed() {
                let subStr = String(chars[jdx ..< idx])
                if wordDict.contains(subStr) && dpArray[jdx] == true {
                    dpArray[idx] = true
                }
            }
        }
        return dpArray.last!
    }

    // 279. Perfect Squares
    func numSquares(_ n: Int) -> Int {
        var dp = Array(repeating: Int.max - 1, count: n + 1)
        dp[0] = 0
        for i in 0 ... n {
            var j = 1
            while i + j * j <= n {
                dp[i + j * j] = min(dp[i + j * j], dp[i] + 1)
                j += 1
            }
        }
        return dp[n]
    }

    // 221. Maximal Square
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        guard matrix.count > 0 && matrix[0].count > 0 else { return 0 }
        var dp = [[Int]]()
        var maxLen = 0
        for i in 0 ..< matrix.count {
            var arr = Array(repeating: 0, count: matrix[0].count)
            if matrix[i][0] == "1" {
                arr[0] = 1
                maxLen = 1
            }
            dp.append(arr)
        }
        for j in 0 ..< matrix[0].count {
            if matrix[0][j] == "1" {
                dp[0][j] = 1
                maxLen = 1
            }
        }

        for i in 1 ..< matrix.count {
            for j in 1 ..< matrix[0].count where matrix[i][j] == "1" {

                dp[i][j] = min(dp[i - 1][j - 1], dp[i - 1][j], dp[i][j - 1]) + 1
                maxLen = max(maxLen, dp[i][j])
            }
        }
        return maxLen * maxLen
    }

    // 764. Largest Plus Sign
    func orderOfLargestPlusSign(_ N: Int, _ mines: [[Int]]) -> Int {
        var set = Set<Int>()
        for mine in mines { set.insert(mine[0] * N + mine[1]) }

        var dp = [[Int]]()
        var maxPlus = 0

        for i in 0 ..< N {
            var arr = Array(repeating: 0, count: N)
            var count = 0
            for j in 0 ..< N {
                let idx = i * N + j
                count = set.contains(idx) ? 0 : count + 1
                arr[j] = count
            }
            count = 0
            for j in (0 ..< N).reversed() {
                let idx = i * N + j
                count = set.contains(idx) ? 0 : count + 1
                arr[j] = min(arr[j], count)
            }
            dp.append(arr)
        }
        for j in 0 ..< N {
            var count = 0
            for i in 0 ..< N {
                let idx = i * N  + j
                count = set.contains(idx) ? 0 : count + 1
                dp[i][j] = min(dp[i][j], count)
            }
            count = 0
            for i in (0 ..< N).reversed() {
                let idx = i * N + j
                count = set.contains(idx) ? 0 : count + 1
                dp[i][j] = min(dp[i][j], count)
                maxPlus = max(maxPlus, dp[i][j])
            }
        }
        return maxPlus
    }
    
    // 312. Burst Balloons
    func maxCoins(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        let n = nums.count
        let nums = [1] + nums + [1]
        var dp = Array(repeating: Array(repeating: 0, count: nums.count), count: nums.count)
        for i in 1 ..< nums.count - 1 { 
            dp[i][i] = nums[i - 1] * nums[i] * nums[i + 1]
            print("\(dp[i][i]) \(nums[i - 1]) \(nums[i]) \(nums[i + 1])")
        }
        maxCoinsHelper(1, n, nums, &dp)
        return dp[1][n]
    }
    
    private func maxCoinsHelper(_ i: Int, _ j: Int, _ nums: [Int], _ dp: inout [[Int]]) -> Int {
        print("\(i) \(j)")
        if i > j { return 0 }
        if dp[i][j] > 0 { return dp[i][j] }
        var maximum = Int.min
        for k in i ... j {
            let tmp = maxCoinsHelper(i, k - 1, nums, &dp) + maxCoinsHelper(k + 1, j, nums, &dp) + nums[i - 1] * nums[k] * nums[j + 1]
            maximum = max(tmp, maximum)
        }
        dp[i][j] = maximum
        return maximum
    }
    
    // 338. Counting Bits
    func countBits(_ num: Int) -> [Int] {
        if num == 0 { return [0] }
        if num == 1 { return [0, 1] }
        var res = [0, 1]
        var cur = 1
        for i in 2 ... num {
            if cur * 2 == i {
                res.append(1)
                cur *= 2
            } else {
                res.append(res[cur] + res[i - cur])
            }
        }
        return res
    }
    
    // 746. Min Cost Climbing Stairs
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        if cost.count == 1 { return cost[0] }
        if cost.count == 2 { return min(cost[0], cost[1]) }
        var dp = Array(repeating: 0, count: cost.count + 1)
        for i in 2 ..< dp.count {
            dp[i] = min(dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2])
        }
        return dp.last!
    }
    
    // 70. Climbing Stairs
    func climbStairs(_ n: Int) -> Int {
        if n == 1 { return 1 }
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        dp[1] = 1
        for i in 2 ... n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        return dp.last!
    }
    
    // 464. Can I Win
    func canIWin(_ maxChoosableInteger: Int, _ desiredTotal: Int) -> Bool {
        if desiredTotal == 0 { return true }
        
        //it shows that we add all of them but can't get desiredTotal
        if (1 + maxChoosableInteger) * maxChoosableInteger / 2 < desiredTotal {
            return false
        }
        var states: [Bool?] = Array(repeating: nil, count: 1 << maxChoosableInteger)
        return canIWinHelper(maxChoosableInteger, 0, desiredTotal, &states)
    }
    
    func canIWinHelper(_ maxChoosableInteger: Int, _ chosenIntegers : Int, _ desiredTotal: Int, _ states: inout [Bool?]) -> Bool {
        if let state = states[chosenIntegers] { return state }
        for i in 1 ... maxChoosableInteger where ((1 << (i - 1)) & chosenIntegers) == 0{
            if i >= desiredTotal || 
                canIWinHelper(maxChoosableInteger, 
                              ((1 << (i - 1)) | chosenIntegers), 
                              desiredTotal - i, 
                              &states) == false {
                states[chosenIntegers] = true
                return true
            }
        }
        states[chosenIntegers] = false
        return false
    }
}
