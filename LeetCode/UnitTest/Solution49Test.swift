//
//  Solution49Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution49Test: XCTestCase {

    func test1() {
        let result = Solution49().groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
        assert(result.count == 3)
    }

}
