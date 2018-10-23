//
//  Solution122.swift
//  LeetCode
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution122: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var profit = 0
        for idx in 1..<prices.count where prices[idx] > prices[idx - 1] {
            profit += prices[idx] - prices[idx - 1]
        }
        return profit
    }
}
