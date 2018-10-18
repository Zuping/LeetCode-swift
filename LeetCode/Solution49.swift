//
//  Solution49.swift
//  LeetCode
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution49: NSObject {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var tuples = strs.map { (str: String) -> (String, String) in
            return (str, String(str.sorted()))
            }.sorted { (tupleA: (String, String), tupleB: (String, String)) -> Bool in
                return tupleA.1 > tupleB.1
        }
        var result: [[String]] = [[tuples[0].0]]
        for idx in 1..<tuples.count {
            let preTuple = tuples[idx - 1]
            let tuple = tuples[idx]
            if tuple.1 == preTuple.1 {
                result[result.count - 1].append(tuple.0)
            } else {
                result.append([tuple.0])
            }
        }
        
        return result
    }
}
