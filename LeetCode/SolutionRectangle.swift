//
//  SolutionRectangle.swift
//  LeetCode
//
//  Created by zuping on 11/15/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionRectangle: NSObject {
    // 84. Largest Rectangle in Histogram
    func largestRectangleArea(_ heights: [Int]) -> Int {
        guard heights.count > 0 else {
            return 0
        }
        let heights = heights + [0]
        var stack = [Int]()
        var i = 0
        var maxArea = 0
        while i < heights.count {
            if stack.isEmpty || heights[i] >= heights[stack.last!] {
                stack.append(i)
                i += 1
            } else {
                let pre = stack.removeLast()
                let width = stack.isEmpty ? i : i - stack.last! - 1
                let height = heights[pre]
                maxArea = max(maxArea, width * height)
            }
        }
        return maxArea
    }

    // 85. Maximal Rectangle
    func maximalRectangle(_ matrix: [[Character]]) -> Int {
        guard matrix.count > 0 && matrix[0].count > 0 else { return 0 }
        var heights = [[Int]]()
        for i in 0 ..< matrix.count {
            var tmpHeights = Array(repeating: 0, count: matrix[i].count)
            for j in 0 ..< matrix[i].count where matrix[i][j] == "1" {
                var h = 0
                while i + h < matrix.count && matrix[i + h][j] == "1" {
                    h += 1
                }
                tmpHeights[j] = h
            }
            heights.append(tmpHeights)
        }

        var maxArea = 0
        for tmpHeights in heights {
            maxArea = max(maxArea, maxRectangle(tmpHeights))
        }
        return maxArea
    }

    func maxRectangle(_ heights: [Int]) -> Int {
        let heights = heights + [0]
        var stack = [Int]()
        var i = 0
        var maxArea = 0
        while i < heights.count {
            if stack.isEmpty || heights[i] >= heights[stack.last!] {
                stack.append(i)
                i += 1
            } else {
                let pre = stack.removeLast()
                let width = stack.isEmpty ? i : i - stack.last! - 1
                let height = heights[pre]
                maxArea = max(maxArea, width * height)
            }
        }

        return maxArea
    }
}
