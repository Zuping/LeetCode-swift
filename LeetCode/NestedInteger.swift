//
//  NestedInteger.swift
//  LeetCode
//
//  Created by zuping on 11/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa


// This is the interface that allows for creating nested lists.
// You should not implement it, or speculate about its implementation
class NestedInteger {
    // Return true if this NestedInteger holds a single integer, rather than a nested list.
    public func isInteger() -> Bool { return false }

    // Return the single integer that this NestedInteger holds, if it holds a single integer
    // The result is undefined if this NestedInteger holds a nested list
    public func getInteger() -> Int { return 0 }

    // Set this NestedInteger to hold a single integer.
    public func setInteger(value: Int) { }

    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
    public func add(elem: NestedInteger) { }

    // Return the nested list that this NestedInteger holds, if it holds a nested list
    // The result is undefined if this NestedInteger holds a single integer
    public func getList() -> [NestedInteger] { return [] }
}

extension NestedInteger {

    func depthSumInverse(_ nestedList: [NestedInteger]) -> Int {
        var sum = 0
        var nodes = [(Int, Int)]()
        var maxLevel = 0
        for tmp in nestedList {
            depthSumHelper(tmp, 0, &nodes, &maxLevel)
        }
        for node in nodes {
            sum += (maxLevel - node.1 + 1) * node.0
        }
        return sum
    }

    func depthSumHelper(_ nestedInteger: NestedInteger, _ level: Int,
                        _ nodes: inout [(Int, Int)], _ maxLevel: inout Int) {
        maxLevel = max(maxLevel, level)
        if nestedInteger.isInteger() {
            nodes.append((nestedInteger.getInteger(), level))
        } else {
            for tmp in nestedInteger.getList() {
                depthSumHelper(tmp, level + 1, &nodes, &maxLevel)
            }
        }
    }
}

