//
//  Solution155.swift
//  LeetCode
//
//  Created by zuping on 11/2/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution155: NSObject {

}

class MinStack {
    var stack1: [Int] = []
    var stack2: [Int] = []
    init() { }

    func push(_ x: Int) {
        stack1.append(x)
        if  stack2.isEmpty || x <= stack2.last! {
            stack2.append(x)
        }
    }

    func pop() {
        if stack1.last! == stack2.last! {
            stack2.removeLast()
        }
        stack1.removeLast()
    }

    func top() -> Int {
        return stack1.last!
    }

    func getMin() -> Int {
        return stack2.last!
    }
}
