//
//  SolutionGreedyTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/25/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class SolutionGreedyTest: XCTestCase {

    let solution = SolutionGreedy()

    func test763() {
        assert(solution.partitionLabels("ababcbacadefegdehijhklij") == [9,7,8])
    }

}
