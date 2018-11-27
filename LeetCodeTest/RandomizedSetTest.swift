//
//  RandomizedSetTest.swift
//  LeetCodeTest
//
//  Created by zuping on 11/26/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class RandomizedSetTest: XCTestCase {

    func test1() {
        // ["RandomizedSet","insert","remove","insert","remove","getRandom","getRandom","getRandom","getRandom","getRandom","getRandom","getRandom","getRandom","getRandom","getRandom"]
        // [[],[0],[0],[-1],[0],[],[],[],[],[],[],[],[],[],[]]
        let set = RandomizedSet()
        set.insert(0)
        set.remove(0)
        set.insert(-1)
        set.remove(0)
        set.getRandom()
        set.getRandom()
        set.getRandom()
        set.getRandom()
        set.getRandom()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
