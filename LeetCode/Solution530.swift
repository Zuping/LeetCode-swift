//
//  Solution530.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution530: NSObject {
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        var array: [Int] = []
        var minDiff = Int.max
        inOrder(root, &array)
        guard array.count > 1 else {
            return 0
        }
        for idx in 0..<array.count - 1 {
            let diff = array[idx + 1] - array[idx]
            minDiff = minDiff > diff ? diff : minDiff
        }
        return minDiff
    }
    
    func inOrder(_ node: TreeNode?, _ array: inout [Int]) {
        if let node = node {
            inOrder(node.left, &array)
            array.append(node.val)
            inOrder(node.right, &array)
        }
    }
}
