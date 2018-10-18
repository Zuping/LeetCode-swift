//
//  Solution717Test.swift
//  LeetCodeTest
//
//  Created by Zuping Li on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution717Test: XCTestCase {

    func test1() {
        assert(Solution717().isOneBitCharacter([1, 0, 0]) == true)
    }

    func test2() {
        assert(Solution717().isOneBitCharacter([1, 1, 1, 0]) == false)
    }

}
