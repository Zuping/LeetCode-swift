//
//  Solution365.swift
//  LeetCode
//
//  Created by zuping on 11/4/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution365: NSObject {
    func canMeasureWater(_ x: Int, _ y: Int, _ z: Int) -> Bool {
        guard z > 0 else {
            return true
        }
        return z <= x + y && z % gcd(x, y) == 0
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a, b = b
        if a < b { swap(&a, &b) }
        while b != 0 {
            let c = a % b
            a = b
            b = c
        }
        return a
    }
}
