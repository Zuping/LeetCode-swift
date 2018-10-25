//
//  Solution840.swift
//  LeetCode
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution840: NSObject {
    func numMagicSquaresInside(_ grid: [[Int]]) -> Int {
        guard grid.count > 2 && grid[0].count > 2 else { return 0 }
        var count = 0
        for row in 0...grid.count - 3 {
            for col in 0...grid[0].count - 3 {
                if isMagicSquare(grid, row, col) {
                    count += 1
                }
            }
        }
        return count
    }
    func isMagicSquare(_ grid: [[Int]], _ row: Int, _ col: Int) -> Bool {
        var set = Set<Int>()
        for idx in row..<row + 3 {
            for iidx in col..<col + 3 {
                if grid[idx][iidx] > 9 || grid[idx][iidx] < 1 {
                    return false
                }
                if set.contains(grid[idx][iidx]) {
                    return false
                }
                set.insert(grid[idx][iidx])
            }
        }
        var rowSums = [0, 0, 0]
        var colSums = [0, 0, 0]
        for idx in 0..<3 {
            rowSums[idx] = grid[row + idx][col] + grid[row + idx][col + 1] + grid[row + idx][col + 2]
        }
        for idx in 0..<3 {
            colSums[idx] = grid[row][col + idx] + grid[row + 1][col + idx] + grid[row + 2][col + idx]
        }
        if rowSums[0] != rowSums[1] || rowSums[1] != rowSums[2] {
            return false
        }
        if colSums[0] != colSums[1] || colSums[1] != colSums[2] {
            return false
        }
        let leftDiagnoal = grid[row][col] + grid[row + 2][col + 2]
        let rightDiagnoal = grid[row + 2][col] + grid[row][col + 2]
        if leftDiagnoal != rightDiagnoal {
            return false
        }
        return true
    }
}
