//
//  Solution10.swift
//  LeetCode
//
//  Created by zuping on 11/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution10: NSObject {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let sChars = Array(s)
        let pattern = Array(p)
        return dfs(sChars, pattern, 0, 0)
    }

    func dfs(_ s: [Character], _ p: [Character], _ i: Int, _ j: Int) -> Bool {
        if j == p.count {
            return i == s.count
        }

        if j == p.count - 1 {
            return i == s.count - 1 && (s[i] == p[j] || p[j] == ".")
        }

        if p[j + 1] != "*" {
            if i == s.count {
                return false
            } else {
                return (s[i] == p[j] || p[j] == ".") && dfs(s, p, i + 1, j + 1)
            }

        }

        var idx = i
        while idx < s.count && (s[idx] == p[j] || p[j] == ".") {
            if dfs(s, p, idx, j + 2) {
                return true
            }
            idx += 1
        }
        return dfs(s, p, idx, j + 2)
    }
}
