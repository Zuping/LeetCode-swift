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
}
