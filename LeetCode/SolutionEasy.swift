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

    // 442. Find All Duplicates in an Array
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        guard nums.count > 0 else {
            return result
        }
        var nums = nums
        for num in nums {
            if nums[abs(num) - 1] < 0 {
                result.append(num)
            } else {
                nums[abs(num) - 1] = 0 - nums[abs(num) - 1]
            }
        }
        return result
    }

    // 605. Can Place Flowers
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var left = -1, right = -1
        var cnt = 0
        for i in 0 ..< flowerbed.count {
            if left == -1 && flowerbed[i] == 0 {
                left = i
                right = i
                continue
            }
            if flowerbed[i] == 0 {
                right += 1
                continue
            }

            if flowerbed[i] == 1 {
                var length = right - left + 1
                if left == 0 {
                    length += 1
                }
                cnt += (length - 1) / 2
                left = -1
                right = -1
            }
        }
        if right >= left {
            var length = right - left + 1
            if left == 0 {
                length += 1
            }
            if right == flowerbed.count - 1 {
                length += 1
            }
            cnt += (length - 1) / 2
        }
        return cnt >= n
    }

    // 34. Find First and Last Position of Element in Sorted Array
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 0 else { return [-1, -1] }
        var l = 0, r = nums.count - 1
        while l < r {
            let mid = l + (r - l) / 2
            if nums[mid] == target {
                l = mid
                r = mid
                while l - 1 >= 0 && nums[l - 1] == target {
                    l -= 1
                }
                while r + 1 < nums.count && nums[r + 1] == target {
                    r += 1
                }
                break
            }
            if nums[mid] < target {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }
        if(nums[l] != target) {
            return [-1, -1]
        }

        return [l, r]
    }

    // 256. Paint House
    func minCost(_ costs: [[Int]]) -> Int {
        guard costs.count > 0 else { return 0 }
        var dp = Array(repeating: [0, 0 , 0], count: costs.count)
        dp[0][0] = costs[0][0]
        dp[0][1] = costs[0][1]
        dp[0][2] = costs[0][2]
        for idx in 1 ..< costs.count {
            dp[idx][0] = min(dp[idx - 1][1], dp[idx - 1][2]) + costs[idx][0]
            dp[idx][1] = min(dp[idx - 1][0], dp[idx - 1][2]) + costs[idx][1]
            dp[idx][2] = min(dp[idx - 1][0], dp[idx - 1][1]) + costs[idx][2]
        }
        let arr = dp.last!
        return min(arr[0], arr[1], arr[2])
    }

    // 243. Shortest Word Distance
    func shortestDistance(_ words: [String], _ word1: String, _ word2: String) -> Int {
        guard words.count > 0 else { return 0 }
        var idx1 = [Int]()
        var idx2 = [Int]()
        for idx in 0 ..< words.count {
            if words[idx] == word1 { idx1.append(idx) }
            if words[idx] == word2 { idx2.append(idx) }
        }
        var minDistance = Int.max
        let n = words.count
        for i1 in idx1 {
            for i2 in idx2 {
                let tmp = min(abs(i1 - i2), i1 + n - i2, i2 + n - i1)
                minDistance = min(tmp, minDistance)
            }
        }
        return minDistance
    }

    // 187. Repeated DNA Sequences
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        guard s.count > 10 else {
            return []
        }
        var set = Set<String>()
        var result = Set<String>()
        let chars = Array(s)
        for i in 0 ..< chars.count - 9 {
            let str = String(chars[i ... i + 9])
            if set.contains(str) {
                result.insert(str)
            } else {
                set.insert(str)
            }
        }
        return Array(result)
    }

    // 205. Isomorphic Strings
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        let ss = helperIsIsomorphic(s)
        let tt = helperIsIsomorphic(t)
        return ss == tt
    }

    func helperIsIsomorphic(_ s: String) -> String {
        var dict = [Character: Int]()
        var ss = ""
        var count = 0
        for c in s {
            if let val = dict[c] {
                ss.append("\(val)")
            } else {
                dict[c] = count
                ss.append("\(count)")
                count += 1
            }
        }
        return ss
    }

    // 198. House Robber
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        if nums.count == 1 { return nums[0] }
        var dp = Array(repeating: Array(repeating: 0, count: nums.count), count: 2)
        dp[1][0] = nums[0]
        dp[1][1] = nums[1]
        dp[0][1] = nums[0]

        for i in 2 ..< nums.count {
            dp[0][i] = max(dp[0][i - 1], dp[1][i - 1])
            dp[1][i] = max(dp[0][i - 1], dp[1][i - 2]) + nums[i]
        }
        let tmp1 = max(dp[0][nums.count - 1], dp[1][nums.count - 1])
        let tmp2 = max(dp[0][nums.count - 2], dp[1][nums.count - 2])
        return max(tmp1, tmp2)
    }

    // 280. Wiggle Sort
    func wiggleSort(_ nums: inout [Int]) {
        guard nums.count > 0  else { return }
        let copy = nums.sorted()
        var idx = nums.count - 1
        for i in stride(from: 1, to: nums.count, by: +2) {
            nums[i] = copy[idx]
            idx -= 1
        }
        idx = 0
        for i in 0 ..< nums.count where i % 2 == 0 {
            nums[i] = copy[idx]
            idx += 1
        }
    }

    // 406. Queue Reconstruction by Height
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        guard people.count > 0 else { return people }
        let people = people.sorted(by: {
            if $0[0] != $1[0] {
                return $0[0] > $1[0]
            } else {
                return $0[1] < $1[1]
            }
        })
        var result = [[Int]]()
        for p in people {
            result.insert(p, at: p[1])
        }
        return result
    }

    // 289. Game of Life
    func gameOfLife(_ board: inout [[Int]]) {
        guard board.count > 0 && board[0].count > 0 else {
            return
        }

        let directions = [[1, 0], [-1, 0], [0, 1], [0, -1], [1, 1], [-1, -1], [1, -1], [-1, 1]]
        for i in 0 ..< board.count {
            for j in 0 ..< board[0].count {
                var count = 0
                for dir in directions {
                    let x = i + dir[0], y = j + dir[1]
                    if x < 0 || x == board.count || y < 0 || y == board[0].count {
                        continue
                    }
                    if board[x][y] % 10 == 1 {
                        count += 1
                    }
                }

                // less than 2, dead
                if count < 2 {
                    board[i][j] += 10
                    continue
                }

                // keep living
                if count >= 2 && count <= 3 && board[i][j] == 1 {
                    board[i][j] += 20
                    continue
                }

                // die due to over population
                if count > 3 && board[i][j] == 1 {
                    board[i][j] += 10
                    continue
                }

                // become alive due to reproduction
                if count == 3 && board[i][j] == 0 {
                    board[i][j] += 20
                    continue
                }

            }
        }

        for i in 0 ..< board.count {
            for j in 0 ..< board[0].count {
                if board[i][j] / 10 == 2 {
                    board[i][j] = 1
                } else {
                    board[i][j] = 0
                }
            }
        }
    }

    // 73. Set Matrix Zeroes
    func setZeroes(_ matrix: inout [[Int]]) {
        guard matrix.count > 0 && matrix[0].count > 0 else { return }
        var verticalFlag = false, hortizontalFlag = false
        for i in 0 ..< matrix.count {
            if matrix[i][0] == 0 {
                verticalFlag = true
                break
            }
        }
        for j in 0 ..< matrix[0].count {
            if matrix[0][j] == 0 {
                hortizontalFlag = true
                break
            }
        }
        for i in 1 ..< matrix.count {
            for j in 1 ..< matrix[0].count {
                if matrix[i][j] == 0 {
                    matrix[0][j] = 0
                    matrix[i][0] = 0
                }
            }
        }
        for i in 1 ..< matrix.count {
            if matrix[i][0] == 0 {
                for j in 1 ..< matrix[0].count {
                    matrix[i][j] = 0
                }
            }
        }
        for j in 1 ..< matrix[0].count {
            if matrix[0][j] == 0 {
                for i in 1 ..< matrix.count {
                    matrix[i][j] = 0
                }
            }
        }
        if verticalFlag {
            for i in 0 ..< matrix.count {
                matrix[i][0] = 0
            }
        }
        if hortizontalFlag {
            for j in 0 ..< matrix[0].count {
                matrix[0][j] = 0
            }
        }
    }

    // 74. Search a 2D Matrix
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard matrix.count > 0 && matrix[0].count > 0 else  { return false }
        var top = 0, bottom = matrix.count
        while top < bottom {
            let mid = top + (bottom - top) / 2
            if matrix[mid].last! < target {
                top = mid + 1
            } else {
                bottom = mid
            }
        }
        let row = bottom
        if row >= matrix.count {
            return false
        }
        var l = 0, r = matrix[0].count
        while l < r {
            let mid = l + (r - l) / 2
            if matrix[row][mid] == target {
                return true
            } else if matrix[row][mid] < target {
                l = mid + 1
            } else {
                r = mid
            }
        }
        return false
    }

    // 739. Daily Temperatures
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        guard T.count > 0 else { return [] }
        var stack = [[T.last!, T.count - 1]]
        var result = [0]
        for i in (0 ..< T.count - 1).reversed() {
            while !stack.isEmpty && stack.last![0] <= T[i] {
                stack.removeLast()
            }
            if stack.isEmpty {
                result.insert(0, at: 0)
            } else {
                result.insert(stack.last![1] - i, at: 0)
            }
            stack.append([T[i], i])
        }
        return result
    }

    // 760. Find Anagram Mappings
    func anagramMappings(_ A: [Int], _ B: [Int]) -> [Int] {
        guard A.count > 0 else {
            return []
        }
        var dict = [Int: [Int]]()
        for i in 0 ..< B.count {
            dict[B[i], default: [Int]()].append(i)
        }
        var map = Array(repeating: -1, count: A.count)
        for i in 0 ..< A.count {
            if let arr = dict[A[i]] {
                map[i] = arr.first!
                dict[A[i]]?.removeFirst()
            }
        }
        return map
    }

    // 204. Count Primes
    func countPrimes(_ n: Int) -> Int {
        guard n > 1 else { return 0 }
        var array = Array(repeating: 0, count: n)
        for i in 2 ..< n {
            if array[i] == 1 {
                continue
            }
            var j = 2
            while j * i < n {
                array[j * i] = 1
                j += 1
            }
        }
        var cnt = 0
        for i in 2 ..< n {
            if array[i] == 0 {
                cnt += 1
            }
        }
        return cnt
    }

    // 929. Unique Email Addresses
    func numUniqueEmails(_ emails: [String]) -> Int {
        guard emails.count > 1 else { return emails.count }
        var set = Set<String>()
        for email in emails {
            let arr = email.split(separator: "@")
            let domain = String(arr[1])
            var local = String(arr[0])
            local = String(local.replacingOccurrences(of: ".", with: ""))
            if let index = local.firstIndex(of: "+") {
                local = String(local[local.startIndex ..< index])
            }
            set.insert(local + "@" + domain)
        }
        return set.count
    }

    // 3. Longest Substring Without Repeating Characters
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else { return 0 }
        let chars = Array(s)
        var set = Set<Character>()
        var l = 0, r = 0, maxLen = 0
        for i in 0 ..< chars.count {
            let ch = chars[i]
            if set.contains(ch) {
                maxLen = max(maxLen, r - l)
                while !set.isEmpty && set.contains(ch) {
                    set.remove(chars[l])
                    l += 1
                }
                set.insert(ch)
                r += 1
            } else {
                set.insert(ch)
                r += 1
            }
        }
        maxLen = max(maxLen, r - l)
        return maxLen
    }

    // 1. Two Sum
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 1 else {
            return [0]
        }
        var tuples = [(Int, Int)]()
        for i in 0 ..< nums.count {
            tuples.append((nums[i], i))
        }
        tuples.sort(by: { return $0.0 < $1.0 })
        var l = 0, r = nums.count - 1
        while l < r {
            let tmp = tuples[l].0 + tuples[r].0
            if tmp == target {
                return [tuples[l].1, tuples[r].1]
            } else if tmp < target {
                l += 1
            } else {
                r -= 1
            }
        }
        return [0]
    }

    // 11. Container With Most Water
    func maxArea(_ height: [Int]) -> Int {
        guard height.count > 0 else {
            return 0
        }
        var l = 0, r = height.count - 1
        var maximum = 0
        while l < r {
            maximum = max(maximum, (r - l) * min(height[l], height[r]))
            print("\(height[l]) \(height[r])")
            if height[l] < height[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return maximum
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


// 170. Two Sum III - Data structure design
class TwoSum {

    var array = [Int]()
    /** Initialize your data structure here. */
    init() { }

    /** Add the number to an internal data structure.. */
    func add(_ number: Int) {
        if array.count == 0 || number > array[array.count - 1] {
            array.append(number)
        } else {
            for i in 0 ..< array.count {
                if array[i] < number {
                    continue
                } else {
                    array.insert(number, at: i)
                    break
                }
            }
        }
    }

    /** Find if there exists any pair of numbers which sum is equal to the value. */
    func find(_ value: Int) -> Bool {
        var l = 0, r = array.count - 1
        while l < r {
            if array[l] + array[r] == value {
                return true
            } else if array[l] + array[r] < value {
                l += 1
            } else {
                r -= 1
            }
        }
        return false
    }
}
