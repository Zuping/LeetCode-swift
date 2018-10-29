//
//  Solution273.swift
//  LeetCode
//
//  Created by zuping on 10/27/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution273: NSObject {
    let ones = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    let oneTens =  ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
    let tens = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    let hundred = "Hundred"
    let thousand = "Thousand"
    let million = "Million"
    let billion = "Billion"

    func numberToWords(_ num: Int) -> String {
        guard num > 0 else {
            return "Zero"
        }
        var result = "", tmpRes = ""
        var num = num
        let numOfB = num / 1000000000
        tmpRes = helper(numOfB)
        if tmpRes.count > 0 {
            result.append(tmpRes + " " + billion + " ")
        }
        num %= 1000000000

        let numOfM = num / 1000000
        tmpRes = helper(numOfM)
        if tmpRes.count > 0 {
            result.append(tmpRes + " " + million + " ")
        }
        num %= 1000000

        let numOfT = num / 1000
        tmpRes = helper(numOfT)
        if tmpRes.count > 0 {
            result.append(tmpRes +  " " + thousand + " ")
        }
        num %= 1000

        tmpRes = helper(num)
        if tmpRes.count > 0 {
            result.append(tmpRes)
        }

        return result.trimmingCharacters(in: CharacterSet.whitespaces)
    }

    func helper(_ num: Int) -> String {
        guard num > 0 else { return "" }
        if num > 1000 {
            return helper(num / 1000)
        }
        var num = num
        var result = ""
        let numOfH = num / 100
        if numOfH > 0 {
            result.append(ones[numOfH - 1] + " " + hundred + " ")
        }
        num %= 100

        if num > 10 && num < 20 {
            result.append(oneTens[num % 10 - 1])
        } else {
            let numOfTens = num / 10
            if numOfTens > 0 {
                result.append(tens[numOfTens - 1] + " ")
            }
            num %= 10
            if num > 0 {
                result.append(ones[num - 1])
            }
        }

        return result.trimmingCharacters(in: CharacterSet.whitespaces)
    }
}
