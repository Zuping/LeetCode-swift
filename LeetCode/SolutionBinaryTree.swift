//
//  SolutionBinaryTree.swift
//  LeetCode
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionBinaryTree: NSObject {
    // LeetCode 105. Construct Binary Tree from Preorder and Inorder Traversal
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard preorder.count > 0 && inorder.count > 0 else { return nil }
        let node = TreeNode(preorder[0])
        let index = inorder.firstIndex(of: node.val)!
        let leftLen = index

        let preLeft = Array(preorder[1 ..< 1 + leftLen])
        let inLeft = Array(inorder[0 ..< index])
        node.left = buildTree(preLeft, inLeft)

        let preRight = Array(preorder[1 + leftLen ..< preorder.count])
        let inRight = Array(inorder[index + 1 ..< inorder.count])
        node.right = buildTree(preRight, inRight)
        return node
    }

    // LeetCode 106. Construct Binary Tree from Inorder and Postorder Traversal
    func buildTree(inorder inorder: [Int], postorder postorder: [Int]) -> TreeNode? {
        guard inorder.count > 0 && postorder.count > 0 else { return nil }
        let node = TreeNode(postorder.last!)
        let index = inorder.firstIndex(of: node.val)!

        let inLeft = Array(inorder[0 ..< index])
        let inRight = Array(inorder[index + 1 ..< inorder.count])

        let postLeft = Array(postorder[0 ..< index])
        let postRight = Array(postorder[index ..< postorder.count - 1])

        node.left = buildTree(inorder: inLeft, postorder: postLeft)
        node.right = buildTree(inorder: inRight, postorder: postRight)

        return node
    }

    // LeetCode 102. Binary Tree Level Order Traversal
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else { return [] }
        var queue: [TreeNode] = [root!]
        var result: [[Int]] = []
        while !queue.isEmpty {
            var level: [Int] = []
            let size = queue.count
            for _ in 0 ..< size {
                let node = queue.first!
                level.append(node.val)
                queue.removeFirst()
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            result.append(level)
        }
        return result.reversed()
    }

    // 111. Minimum Depth of Binary Tree
    func minDepth(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        var queue = [root!]
        var count = 0
        while !queue.isEmpty {
            count += 1
            var newQueue: [TreeNode] = []
            for node in queue {
                var emptyCnt = 0
                if node.left == nil {
                    emptyCnt += 1
                } else {
                    newQueue.append(node.left!)
                }
                if node.right == nil {
                    emptyCnt += 1
                } else {
                    newQueue.append(node.right!)
                }
                if emptyCnt == 2 { return count }
            }
            queue = newQueue
        }
        return count
    }
}
