//
//  Solution17.swift
//  LeetCode
//
//  Created by zuping on 11/5/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution17: NSObject {
    func letterCombinations(_ digits: String) -> [String] {
        var result = [String]()
        guard digits.count > 0 else { return result }
        let chars = ["abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
        let arr = digits.map({ Int(String($0))! - 2 })
        recursionHelper(0, arr, chars, "", &result)
        return result
    }

    func recursionHelper(_ index: Int, _ arr: [Int],
                         _ chars: [String], _ tmpRes: String, _ result: inout [String]) {
        if index == arr.count {
            result.append(tmpRes)
            return
        }

        let charArray = Array(chars[arr[index]])
        for char in charArray {
            recursionHelper(index + 1, arr, chars, tmpRes + String(char), &result)
        }
    }
}
