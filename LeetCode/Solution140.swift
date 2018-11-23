//
//  Solution140.swift
//  LeetCode
//
//  Created by zuping on 11/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution140: NSObject {
    func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
        var map = [String: [String]]()
        return dfs(Array(s), wordDict, &map)
    }

    func dfs(_ array: [Character], _ wordDict: [String], _ map: inout [String: [String]]) -> [String] {
        if array.count == 0 {
            return [""]
        }
        if let arr = map[String(array)] {
            return arr
        }
        var res = [String]()
        for word in wordDict where word.count <= array.count {
            let chars = Array(word)
            var flag = true
            for i in 0 ..< chars.count {
                if chars[i] != array[i] {
                    flag = false
                    break
                }
            }
            if !flag { continue }
            let tmpRes = dfs(Array(array[chars.count ..< array.count]), wordDict, &map)
            for tmp in tmpRes {
                res.append(word + (tmp.isEmpty ? "" : " ") + tmp)
            }
        }
        map[String(array)] = res
        return res
    }
}
