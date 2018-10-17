//
//  Solution496.swift
//  LeetCode
//
//  Created by zuping on 10/16/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution496: NSObject {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        if nums1.count == 0 || nums2.count == 0 {
            return []
        }
        var stack: [Int] = []
        var dict: [Int: Int] = Dictionary()
        for idx in (0...(nums2.count - 1)).reversed() {
            if stack.isEmpty {
                stack.append(nums2[idx])
                dict[nums2[idx]] = -1
                continue
            }
            while !stack.isEmpty && nums2[idx] >= stack.last! {
                stack.removeLast()
            }
            if stack.isEmpty {
                dict[nums2[idx]] = -1
            } else {
                dict[nums2[idx]] = stack.last
            }
            stack.append(nums2[idx])
        }
        var result: [Int] = []
        for idx in 0...nums1.count - 1 {
            result.append(dict[nums1[idx]]!)
        }
        return result
    }
}
