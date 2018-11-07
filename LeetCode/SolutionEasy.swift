//
//  SolutionEasy.swift
//  LeetCode
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa


class SolutionEasy: NSObject {
    // 2. Add Two Numbers
    func addTwoNumbers1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil && l2 != nil else { return nil }
        var carry = 0
        var p1 = l1, p2 = l2
        let dummyHead = ListNode(0)
        var node: ListNode?, pre = dummyHead
        while p1 != nil || p2 != nil || carry > 0 {
            var tmp = carry
            if p1 != nil {
                tmp += p1!.val
                p1 = p1?.next
            }
            if p2 != nil {
                tmp += p2!.val
                p2 = p2?.next
            }
            node = ListNode(tmp % 10)
            pre.next = node
            carry = tmp / 10
            pre = node!
        }
        return dummyHead.next
    }

    // LeetCode 20. Valid Parentheses
    func isValid(_ str: String) -> Bool {
        guard str.count > 0 else { return true }
        var stack: [Character] = []
        let leftParentheses = Array("{[(")
        for char in str {
            if leftParentheses.contains(char) {
                stack.append(char)
                continue
            }
            if stack.isEmpty { return false }
            let last = stack.last!
            if char == ")" {
                if last != "(" {
                    return false
                } else {
                    stack.removeLast()
                }
            }
            if char == "]" {
                if last != "[" {
                    return false
                } else {
                    stack.removeLast()
                }
            }
            if char == "}" {
                if last != "{" {
                    return false
                } else {
                    stack.removeLast()
                }
            }
        }
        return stack.count == 0
    }

    // LeetCode 38. Count and Say
    func countAndSay(_ num: Int) -> String {
        guard num > 0 else { return "" }
        var array = ["1"]
        for _ in 0 ..< 30 {
            let chars = Array(array.last!)
            var str = ""
            var idx = 0
            while idx < chars.count {
                var cnt = 0
                let char = chars[idx]
                while idx < chars.count && chars[idx] == char {
                    idx += 1
                    cnt += 1
                }
                str.append("\(cnt)\(char)")
            }
            array.append(String(str))
        }
        return array[num - 1]
    }

    // 61. Rotate List
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil else { return nil }
        var count = 0
        var node = head
        while node != nil {
            count += 1
            node = node?.next
        }
        let k = k % count
        if k == 0 { return head }
        count = count - k
        node = head
        var pre: ListNode?
        while count > 0 {
            pre = node
            node = node?.next
            count -= 1
        }
        let newHead = node
        pre?.next = nil
        while node?.next != nil {
            node = node?.next
        }
        node?.next = head

        return newHead
    }

    // 66. Plus One
    func plusOne(_ digits: [Int]) -> [Int] {
        var result: [Int] = []
        guard digits.count > 0 else { return result }
        var carry = 1
        for idx in (0 ..< digits.count).reversed() {
            let tmp = carry + digits[idx]
            result.append(tmp % 10)
            carry = tmp / 10
        }
        if carry > 0 {
            result.append(carry)
        }
        return result.reversed()
    }

    // LeetCode 88. Merge Sorted Array
    func merge(_ nums1: inout [Int], _ mVal: Int, _ nums2: [Int], _ nVal: Int) {
        var ptr1 = mVal - 1, ptr2 = nVal - 1
        var idx = mVal + nVal - 1
        while idx >= 0 {
            if ptr1 < 0 {
                while ptr2 >= 0 {
                    nums1[idx] = nums2[ptr2]
                    idx -= 1
                    ptr2 -= 1
                }
                break
            }
            if ptr2 < 0 {
                break
            }
            if nums1[ptr1] > nums2[ptr2] {
                nums1[idx] = nums1[ptr1]
                ptr1 -= 1
            } else {
                nums1[idx] = nums2[ptr2]
                ptr2 -= 1
            }
            idx -= 1
        }
    }

    // LeetCode 168. Excel Sheet Column Title
    func convertToTitle(_ num: Int) -> String {
        let chars = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var result = ""
        var num = num
        while num != 0 {
            result.append(chars[(num - 1) % 26])
            num = (num - 1) / 26
        }
        return String(result.reversed())
    }

    func convertToTitle1(_ num: Int) -> String {
        let chars = Array("ZABCDEFGHIJKLMNOPQRSTUVWXY")
        var result = ""
        var num = num
        while num != 0 {
            result.append(chars[num % 26])
            var mod = num % 26
            if mod == 0 {
                mod = 26
            }
            num = (num - mod) / 26
        }
        return String(result.reversed())
    }

    // 179. Largest Number
    func largestNumber(_ nums: [Int]) -> String {
        var nums = nums.sorted(by: {
            let str1 = String($0), str2 = String($1)
            if str1.count == str2.count {
                return $0 > $1
            } else {
                return str1 + str2 > str2 + str1
            }
        })
        if nums[0] == 0 { return "0" }
        let result = nums.reduce("", { String($0) + String($1) })
        return result
    }

    // 186. Reverse Words in a String II
    func reverseWords(_ str: inout [Character]) {
        guard str.count > 0 else { return }
        var start = 0, end = 0
        for idx in 0 ..< str.count {
            if str[idx] != " " && idx != str.count - 1 {
                end += 1
            } else {
                if idx == str.count - 1 {
                    end += 1
                }
                str[start ..< end].reverse()
                start = end + 1
                end = start
            }
        }
        str.reverse()
    }

    // 189. Rotate Array
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 0  else { return }
        let k = k % nums.count
        if k == 0 { return }

        for idx in 0 ..< (nums.count - k) / 2 {
            let tmp = nums[idx]
            nums[idx] = nums[nums.count - k - idx - 1]
            nums[nums.count - k - idx - 1] = tmp
        }

        for idx in 0 ..< k / 2 {
            let tmp = nums[nums.count - k + idx]
            nums[nums.count - k + idx] = nums[nums.count - idx - 1]
            nums[nums.count - idx - 1] = tmp
        }

        nums.reverse()
    }

    // 171. Excel Sheet Column Number
    func titleToNumber(_ str: String) -> Int {
        let chars = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let strChars = Array(str)
        var num = 0
        var base = 1
        for idx in (0 ..< str.count).reversed() {
            let index = chars.firstIndex(of: strChars[idx])!
            num += (index + 1) * base
            base *= 26
        }
        return num
    }

    // 274. H-Index
    func hIndex(_ citations: [Int]) -> Int {
        guard citations.count > 0 else { return 0 }
        var citations = Array(citations.sorted().reversed())
        var index = 0
        while index < citations.count {
            if citations[index] <= index {
                return index
            }
            index += 1
        }
        return index
    }

    func hIndexII(_ citations: [Int]) -> Int {
        guard citations.count > 0 else { return 0 }
        var i = 0, knownH = 0
        while i < citations.count {
            let proposedH = citations.count - i
            let currentCitationCount = citations[i]
            if currentCitationCount >= proposedH {
                knownH = proposedH
                break
            }
            i += 1
        }

        return knownH
    }

    // 283. Move Zeroes
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 0 else { return }
        var index = 0
        for idx in 0 ..< nums.count {
            if nums[idx] != 0 {
                nums[index] = nums[idx]
                index += 1
            }
        }
        for idx in index ..< nums.count {
            nums[idx] = 0
        }
    }

    // 369. Plus One Linked List
    func plusOne(_ head: ListNode?) -> ListNode? {
        var node = head
        var pre: ListNode?
        // reverse list
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }

        node = pre
        var carry = 1
        while carry > 0 && node != nil {
            let tmp = node!.val + carry
            node?.val = tmp % 10
            carry = tmp / 10
            node = node?.next
        }

        if carry > 0 {
            node = ListNode(carry)
            head?.next = node
        }

        node = pre
        pre = nil
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }

        return pre
    }

    // 387. First Unique Character in a String
    func firstUniqChar(_ s: String) -> Int {
        var map = [Character: Int]()
        for char in s {
            map[char] = map[char, default: 0] + 1
        }
        let chars = Array(s)
        for idx in 0 ..< chars.count {
            if map[chars[idx]] == 1 {
                return idx
            }
        }
        return -1
    }

    // 414. Third Maximum Number
    func thirdMax(_ nums: [Int]) -> Int {
        var first = Int.min, second = Int.min, third = Int.min
        for num in nums {
            if num > first {
                third = second
                second = first
                first = num
            } else if num > second && num < first {
                third = second
                second = num
            } else if num > third && num < second {
                third = num
            }
        }
        return third != Int.min ? third : first
    }

    // 415. Add Strings
    func addStrings(_ num1: String, _ num2: String) -> String {
        guard num1.count > 0 && num2.count > 0 else { return "" }
        let arr1 = num1.reversed().map({Int(String($0))})
        let arr2 = num2.reversed().map({Int(String($0))})
        var result: [Int] = []
        var idx = 0
        var carry = 0
        while idx <= num1.count || idx <= num2.count {
            var tmp = carry
            if idx < num1.count {
                tmp += arr1[idx]!
            }
            if idx < num2.count {
                tmp += arr2[idx]!
            }
            result.append(tmp % 10)
            carry = tmp / 10
            idx += 1
        }
        var string = ""
        for num in result.reversed() {
            if num == 0 && string.count == 0 {
                continue
            }
            string.append(String(num))
        }
        return string.count > 0 ? string : "0"
    }

    // 445. Add Two Numbers II
    func addTwoNumbers2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil && l2 != nil else { return nil }
        var p1 = reverLinkedList(l1), p2 = reverLinkedList(l2)
        let dummyHead = ListNode(0)
        var pre = dummyHead, node: ListNode?
        var carry = 0
        while carry > 0 || p1 != nil || p2 != nil {
            var tmp = carry
            if p1 != nil {
                tmp += p1!.val
                p1 = p1?.next
            }
            if p2 != nil {
                tmp += p2!.val
                p2 = p2?.next
            }
            node = ListNode(tmp % 10)
            pre.next = node
            pre = node!
            carry = tmp / 10
        }
        return reverLinkedList(dummyHead.next)
    }

    func reverLinkedList(_ head: ListNode?) -> ListNode? {
        var node = head
        var pre: ListNode?
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }
        return pre
    }

    // 451. Sort Characters By Frequency
    func frequencySort(_ s: String) -> String {
        guard s.count > 0 else { return "" }
        var map: [Character: Int] = [:]
        for char in s {
            map[char] = map[char, default: 0] + 1
        }
        var counts = Array(repeating: [Character](), count: s.count)
        for key in map.keys {
            counts[map[key]! - 1].append(key)
        }
        var charArr = [Character]()
        for idx in (0 ..< counts.count).reversed() {
            for jdx in 0 ..< counts[idx].count {
                charArr += Array(repeating: counts[idx][jdx], count: idx + 1)
            }
        }
        return String(charArr)
    }

    // 692. Top K Frequent Words
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var map = [String: Int]()
        for word in words {
            map[word] = map[word, default: 0] + 1
        }
        var counts = Array(repeating: [String](), count: words.count)
        for key in map.keys {
            counts[map[key]! - 1].append(key)
        }
        var result = [String]()
        for idx in (0 ..< counts.count).reversed() {
            let arr = counts[idx].sorted()
            for word in arr {
                result.append(word)
                if result.count == k {
                    return result
                }
            }
        }
        return result
    }

    // 852. Peak Index in a Mountain Array
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        guard A.count >= 3 else { return -1 }
        for idx in 1 ..< A.count - 1 {
            if A[idx] > A[idx + 1] && A[idx] > A[idx - 1] {
                return idx
            }
        }
        return -1
    }

    // 69. Sqrt(x)
    func mySqrt(_ x: Int) -> Int {
        var l = 0, r = x
        while l < r - 1 {
            let mid = r - (r - l) / 2
            let mid2 = mid * mid
            if mid2 == x {
                return mid
            } else if mid2 > x {
                r = mid
            } else {
                l = mid
            }
        }
        let c1 = l, c2 = l + 1, c3 = l + 2
        if c3 * c3 <= x {
            return c3
        }
        if c2 * c2 < x {
            return c2
        }
        return c1
    }

    // 367. Valid Perfect Square
    func isPerfectSquare(_ num: Int) -> Bool {
        var l = 0, r = num

        while l < r {
            let mid = l + (r - l) / 2
            if mid * mid == num { return true }
            if mid * mid <= num { l = mid + 1}
            else { r = mid }
        }
        return false
    }

    // 50. Pow(x, n)
    func myPow(_ x: Double, _ n: Int) -> Double {
        guard n != 0 else { return 1 }
        let absN = abs(n)
        let result = helper(x, absN)
        return n > 0 ? result : 1 / result
    }

    func helper(_ x: Double, _ n: Int) -> Double {
        guard n != 0 else { return 1 }
        var result = x
        var current =  1
        while current * 2 <= n {
            result *= result
            current += current
        }
        if current == n {
            return result
        } else {
            return result * helper(x, n - current)
        }
    }

    // 228. Summary Ranges
    func summaryRanges(_ nums: [Int]) -> [String] {
        var result = [String]()
        guard nums.count > 0 else { return result }

        var start = 0, end = 0
        for i in 1 ..< nums.count {
            
            if nums[i] == (nums[i - 1] + 1) {
                end += 1
            } else {
                if start < end {
                    result.append("\(nums[start])->\(nums[end])")
                } else {
                    result.append(String(nums[start]))
                }
                start = i
                end = i
            }
        }
        if start < end {
            result.append("\(nums[start])->\(nums[end])")
        } else {
            result.append(String(nums[start]))
        }
        return result
    }

    // 28. Implement strStr()
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count > 0 else { return 0 }
        guard haystack.count > 0 else { return -1 }
        let s = Array(haystack)
        let t = Array(needle)
        var i = 0
        while i < s.count {
            var j = 0
            if s[i] == t[j] {
                while j < t.count && i + j < s.count && s[i + j] == t[j] {
                    j += 1
                    continue
                }
                if j == t.count {
                    return i
                }
            }
            i += 1
        }
        return -1
    }

    // 54. Spiral Matrix
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard matrix.count > 0 && matrix[0].count > 0 else { return [] }
        var result = [Int]()

        let len = matrix.count * matrix[0].count
        var idx = 0, level = 0
        while idx < len {
            let lenH = matrix[0].count - level * 2 - 1
            let lenV = matrix.count - level * 2 - 1
            let row = level, col = level
            level += 1
            if lenH == 0 && lenV == 0 {
                result.append(matrix[row][col])
                break
            }
            if lenH == 0 {
                for i in 0 ... lenV {
                    result.append(matrix[row + i][col])
                }
                break
            }
            if lenV == 0 {
                for i in 0 ... lenH {
                    result.append(matrix[row][col + i])
                }
                break
            }

            // top
            for i in 0 ..< lenH {
                result.append(matrix[row][col + i])
                idx += 1
            }
            if idx == len { break }

            // right
            for i in 0 ..< lenV {
                result.append(matrix[row + i][col + lenH])
                idx += 1
            }
            if idx == len { break }

            // bottom
            for i in (1 ... lenH).reversed() {
                result.append(matrix[row + lenV][col + i])
                idx += 1
            }
            if idx == len { break }

            // left
            for i in (1 ... lenV).reversed() {
                result.append(matrix[row + i ][col])
                idx += 1
            }
            if idx == len { break }

        }

        return result
    }

    // 463. Island Perimeter
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else { return 0 }
        var result = 0
        var visited = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        for i in 0 ..< grid.count {
            for j in 0 ..< grid[0].count {
                if grid[i][j] == 1 {
                    recursionHelper(grid, i, j, &result, &visited)
                    return result
                }
            }
        }
        return result
    }

    func recursionHelper(_ grid: [[Int]], _ x: Int, _ y: Int,
                         _ res: inout Int, _ visited: inout [[Bool]]) {
        if x < 0 || x == grid.count ||
            y < 0 || y == grid[0].count ||
            grid[x][y] == 0 {
            return
        }

        visited[x][y] = true

        let directions = [[1, 0], [-1, 0] , [0, 1], [0, -1]]
        for dir in directions {
            let xx = x + dir[0], yy = y + dir[1]
            if xx < 0 || xx == grid.count || yy < 0 || yy == grid[0].count {
                res += 1
                continue
            }
            if grid[xx][yy] == 0 {
                res += 1
            } else if !visited[xx][yy] {
                recursionHelper(grid, xx, yy, &res, &visited)
            }
        }
    }

    // 448. Find All Numbers Disappeared in an Array
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var nums = nums
        var result = [Int]()
        for num in nums {
            if num > 0 {
                nums[num - 1] = -1
            }
        }
        for idx in 0 ..< nums.count {
            if nums[idx] > 0 {
                result.append(idx + 1)
            }
        }
        return result
    }

}

// 716. Max Stack
class MaxStack {
    var stack1: [Int] = []
    var stack2: [Int] = []
    init() { }

    func push(_ x: Int) {
        stack1.append(x)
        if stack2.isEmpty || x >= stack2.last! {
            stack2.append(x)
        }
    }

    func pop() -> Int {
        if stack1.last == stack2.last {
            stack2.removeLast()
        }
        let top = stack1.last!
        stack1.removeLast()
        return top
    }

    func top() -> Int {
        return stack1.last!
    }

    func peekMax() -> Int {
        return stack2.last!
    }

    func popMax() -> Int {
        let maxVal = stack2.last!
        var tmpStack: [Int] = []
        var index = stack1.count - 1
        while index >= 0 && stack1[index] < maxVal {
            tmpStack.append(stack1[index])
            stack1.removeLast()
            index -= 1
        }
        stack1.removeLast()
        stack2.removeLast()
        for idx in (0 ..< tmpStack.count).reversed() {
            self.push(tmpStack[idx])
        }
        return maxVal
    }
}

// 146. LRU Cache
class LRUCache {
    private var map = [Int: (Int, Int)]()
    private var capacity = 0
    private var t = 0
    init(_ capacity: Int) {
        self.capacity = capacity
    }

    func get(_ key: Int) -> Int {
        t += 1
        if let val = self.map[key]?.0 {
            self.map[key] = (val, t)
            return val
        } else {
            return -1
        }
    }

    func put(_ key: Int, _ value: Int) {
        t += 1
        if self.map.count == self.capacity {
            if self.map.keys.contains(key) {
                self.map[key] = (value, t)
            } else {
                var old = 0, tmpT = t
                for key in self.map.keys where map[key]!.1 < tmpT {
                    tmpT = map[key]!.1
                    old = key
                }
                map.removeValue(forKey: old)
            }
        }
        self.map[key] = (value, t)
    }
}
