//
//  Solution48.swift
//  LeetCode
//
//  Created by zuping on 11/26/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution48: NSObject {
    func rotate(_ matrix: inout [[Int]]) {
        guard matrix.count > 0 && 
            matrix[0].count > 0 && 
            matrix.count == matrix[0].count else {
            return
        }
        let len = matrix.count
        var cnt = 0
        while cnt < len / 2 {
            var i = cnt, j = cnt
            while j < len - cnt - 1 {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[len - j - 1][i]
                matrix[len - j - 1][i] = matrix[len - i - 1][len - j - 1]
                matrix[len - i - 1][len - j - 1] = matrix[j][len - i - 1]
                matrix[j][len - i - 1] = tmp
                
                j += 1
            }
            
            cnt += 1
        }
    }
}
