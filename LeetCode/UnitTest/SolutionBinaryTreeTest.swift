//
//  SolutionBinaryTreeTest.swift
//  LeetCodeTest
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionBinaryTreeTest: XCTestCase {

    let solution = SolutionBinaryTree()

    func test105_1() {
        let preorder = [3, 9, 20, 15, 7]
        let inorder = [9, 3, 15, 20, 7]
        let root = solution.buildTree(preorder, inorder)
        assert(root?.val == 3)
    }

    func test105_2() {
        let preorder = [1, 2, 4, 5, 3, 6, 7]
        let inorder = [4, 2, 5, 1, 6, 3, 7]
        let root = solution.buildTree(preorder, inorder)
        assert(root?.val == 1)
    }

    func test106_1() {
        let postorder = [9, 15, 7, 20, 3]
        let inorder = [9, 3, 15, 20, 7]
        let root = solution.buildTree(inorder: inorder, postorder: postorder)
        assert(root?.val == 3)
    }

    func test106_2() {
        let postorder = [4, 5, 2, 6, 7, 3, 1]
        let inorder = [4, 2, 5, 1, 6, 3, 7]
        let root = solution.buildTree(inorder: inorder, postorder: postorder)
        assert(root?.val == 1)
    }

    func test102_1() {
        let postorder = [4, 5, 2, 6, 7, 3, 1]
        let inorder = [4, 2, 5, 1, 6, 3, 7]
        let root = solution.buildTree(inorder: inorder, postorder: postorder)
        let result = solution.levelOrder(root)
        let expectedResult = [[1], [2, 3], [4, 5, 6, 7]]
        assert(result == expectedResult)
    }

    func test102_2() {
        let postorder = [9, 15, 7, 20, 3]
        let inorder = [9, 3, 15, 20, 7]
        let root = solution.buildTree(inorder: inorder, postorder: postorder)
        let result = solution.levelOrder(root)
        let expectedResult = [[3], [9, 20], [15, 7]]
        assert(result == expectedResult)
    }

}
