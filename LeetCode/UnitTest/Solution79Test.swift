//
//  Solution79Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/29/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution79Test: XCTestCase {

    let solution = Solution79()

    func test1() {
        let board1 = [Array("ABCE"), Array("SFCS"), Array("ADEE")]

        let word1 = "ABCCED" // return true.
        assert(solution.exist(board1, word1) == true)
        let word2 = "SEE" // return true.
        assert(solution.exist(board1, word2) == true)
        let word3 = "ABCB" // return false.
        assert(solution.exist(board1, word3) == false)

        let board2 = [Array("ABCE"), Array("SFES"), Array("ADEE")]
        let word4 = "ABCESEEEFS"
        assert(solution.exist(board2, word4) == true)
    }

}
