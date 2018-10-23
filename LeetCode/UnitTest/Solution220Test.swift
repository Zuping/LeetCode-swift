//
//  Solution220Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution220Test: XCTestCase {
    var solution: Solution220?
    override func setUp() {
        solution = Solution220()
    }
    func test1() {
        let result = solution!.containsNearbyAlmostDuplicate([1, 2, 3, 1], 3, 0)
        assert(result == true)
    }
    func test2() {
        let result = solution!.containsNearbyAlmostDuplicate([1, 0, 1, 1], 1, 2)
        assert(result == true)
    }
    func test3() {
        let result = solution!.containsNearbyAlmostDuplicate([1, 5, 9, 1, 5, 9], 2, 3)
        assert(result == false)
    }
    func test4() {
        let result = solution!.containsNearbyAlmostDuplicate([], 0, 0)
        assert(result == false)
    }
    func test5() {
        let result = solution!.containsNearbyAlmostDuplicate([-1, -1], 1, 0)
        assert(result == true)
    }
    func test6() {
        let result = solution!.containsNearbyAlmostDuplicate([1, 2], 0, 1)
        assert(result == false)
    }
    func test7() {
        let result = solution!.containsNearbyAlmostDuplicate([0, 10, 22, 15, 0, 5, 22, 12, 1, 5], 3, 3)
        assert(result == false)
    }

}
