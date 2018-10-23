//
//  Solution121.swift
//  LeetCode
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution121: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var high = prices.last!
        var low = high
        var profit = 0
        for idx in (0..<prices.count - 1).reversed() {
            if prices[idx] > high {
                high = prices[idx]
                low = prices[idx]
                continue
            }
            if prices[idx] < low {
                low = prices[idx]
            }
            profit = max(profit, high - low)
        }
        return profit
    }
}
