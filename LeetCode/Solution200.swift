//
//  Solution200.swift
//  LeetCode
//
//  Created by zuping on 10/29/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution200: NSObject {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else { return 0 }
        var count = 0
        var grid = grid
        for row in 0 ..< grid.count {
            for col in 0 ..< grid[0].count where grid[row][col] == "1" {
                count += 1
                dfs(&grid, row, col)
            }
        }
        return count
    }

    let directions = [[1, 0], [-1, 0], [0, -1], [0, 1]]
    func dfs(_ grid: inout [[Character]], _ row: Int, _ col: Int) {
        if row < 0 || row == grid.count || col < 0 || col == grid[0].count {
            return
        }
        if grid[row][col] == "0" { return }

        grid[row][col] = "0"
        for direction in directions {
            dfs(&grid, row + direction[0], col + direction[1])
        }
    }
}
