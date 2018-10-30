//
//  Solution79.swift
//  LeetCode
//
//  Created by zuping on 10/29/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution79: NSObject {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        guard board.count > 0 && board[0].count > 0 else { return false }
        guard word.count > 0 else { return true }
        let chars = Array(word)
        for row in 0 ..< board.count {
            for col in 0 ..< board[0].count where board[row][col] == chars[0]{
                var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
                if dfs(board, row, col, 0, chars, &visited) {
                    return true
                }
            }
        }
        return false
    }

    let directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    func dfs(_ board: [[Character]], _ row: Int, _ col: Int, _ idx: Int,
             _ chars: [Character], _ visited: inout [[Bool]]) -> Bool {
        if idx == chars.count { return true }
        if row < 0 || row == board.count || col < 0 || col == board[0].count {
            return false
        }
        if visited[row][col] { return false }

        let targetChar = chars[idx]
        if board[row][col] != targetChar { return false }
        visited[row][col] = true
        for direction in directions {
            if dfs(board, row + direction[0], col + direction[1],
                   idx + 1, chars, &visited) {
                return true
            }
        }
        visited[row][col] = false
        return false
    }
}
