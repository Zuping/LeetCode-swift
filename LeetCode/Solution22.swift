//
//  Solution22.swift
//  LeetCode
//
//  Created by zuping on 11/5/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution22: NSObject {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        guard n > 0 else { return result }
        recusionHelper(&result, 0, 0, "", n * 2)
        return result
    }

    func recusionHelper(_ result: inout [String], _ lp: Int, _ rp: Int,
                        _ tmpRes: String, _ len: Int) {
        if tmpRes.count == len {
            result.append(tmpRes)
            return
        }

        if lp < len / 2 {
            recusionHelper(&result, lp + 1, rp, tmpRes + "(", len)
        }

        if lp > rp {
            recusionHelper(&result, lp, rp + 1, tmpRes + ")", len)
        }
    }
}
