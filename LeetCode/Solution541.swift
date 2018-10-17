//
//  Solution541.swift
//  LeetCode
//
//  Created by zuping on 10/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution541: NSObject {
    func reverseStr(_ str: String, _ kSpace: Int) -> String {
        if kSpace == 1 {
            return str
        }
        if str.count <= kSpace {
            return String(str.reversed())
        }
        var chars = Array(str)
        var idx = 0
        while idx * kSpace < str.count {
            if idx % 2 == 0 {
                if (idx + 1) * kSpace > str.count {
                    let end = str.count - idx * kSpace - 1
                    for iidx in 0 ... (end / 2) {
                        let left = idx * kSpace + iidx
                        let right = idx * kSpace + end - iidx
                        let tmp = chars[left]
                        chars[left] = chars[right]
                        chars[right] = tmp
                    }
                } else {
                    for iidx in 0 ... (kSpace / 2 - 1) {
                        let left = idx * kSpace + iidx
                        let right = idx * kSpace + kSpace - iidx - 1
                        let tmp = chars[left]
                        chars[left] = chars[right]
                        chars[right] = tmp
                    }
                }
            }
            idx += 1
        }
        return String(chars)
    }
}
