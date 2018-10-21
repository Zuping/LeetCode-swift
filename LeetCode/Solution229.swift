//
//  Solution229.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution229: NSObject {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var firstE = 0, secondE = 0
        var fCnt = 0, sCnt = 0
        for num in nums {
            if num == firstE {
                fCnt += 1
            } else if num == secondE {
                sCnt += 1
            } else if fCnt == 0 {
                firstE = num
                fCnt = 1
            } else if sCnt == 0 {
                secondE = num
                sCnt = 1
            } else {
                sCnt -= 1
                fCnt -= 1
            }
        }
        fCnt = 0
        sCnt = 0
        for num in nums {
            if num == firstE {
                fCnt += 1
            } else if num == secondE {
                sCnt += 1
            }
        }
        var result: [Int] = []
        if fCnt > nums.count / 3 {
            result.append(firstE)
        }
        if sCnt > nums.count / 3 {
            result.append(secondE)
        }
        return result
    }
}
