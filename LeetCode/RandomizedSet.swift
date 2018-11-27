//
//  RandomizedSet.swift
//  LeetCode
//
//  Created by zuping on 11/26/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class RandomizedSet: NSObject {
    var map = [Int: Int]()
    var array = [Int]()
    
    /** Initialize your data structure here. */
    override init() {
        
    }
    
    /** Inserts a value to the set. Returns true if the set did not already contain the specified element. */
    func insert(_ val: Int) -> Bool {
        if map.keys.contains(val) {
            return false
        } else {
            array.append(val)
            map[val] = array.count - 1
            return true
        }
    }
    
    /** Removes a value from the set. Returns true if the set contained the specified element. */
    func remove(_ val: Int) -> Bool {
        if let idx = map[val] {
            let tmp = array.removeLast()
            if idx != array.count {
                array[idx] = tmp
                map[tmp] = idx
            }
            map.removeValue(forKey: val)
            return true
        } else {
            return false
        }
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        let idx = Int.random(in: 0 ..< array.count)
        return array[idx]
    }
}
