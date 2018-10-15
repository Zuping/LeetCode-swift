//
//  Solution541.swift
//  LeetCode
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution541: NSObject {
    func reverseStr(_ s: String, _ k: Int) -> String {
        if k == 1 {
            return s
        }
        if s.count <= k {
            return String(s.reversed())
        }
        var chars = Array(s)
        var i = 0
        while i * k < s.count {
            if i % 2 == 0 {
                if (i + 1) * k > s.count {
                    let end = s.count - i * k - 1
                    for ii in 0 ... (end / 2) {
                        let left = i * k + ii
                        let right = i * k + end - ii
                        let tmp = chars[left]
                        chars[left] = chars[right]
                        chars[right] = tmp
                    }
                } else {
                    for ii in 0 ... (k / 2 - 1) {
                        let left = i * k + ii
                        let right = i * k + k - ii - 1
                        let tmp = chars[left]
                        chars[left] = chars[right]
                        chars[right] = tmp
                    }
                }
                
            }
            i += 1
        }
        return String(chars)
    }
}
