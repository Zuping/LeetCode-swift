//
//  Solution703.swift
//  LeetCode
//
//  Created by zuping on 11/2/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution703: NSObject {

}

class KthLargest {
    var heap = [Int]()
    let k: Int
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        for num in nums {
            heapify(num)
        }
    }

    func add(_ val: Int) -> Int {
        heapify(val)
        return heap.first!
    }

    func heapify(_ val: Int) {
        if heap.count < k {
            heap.append(val)
            var i = heap.count - 1
            while i > 0 {
                let parent = (i - 1) / 2
                if heap[parent] > heap[i] {
                    swapArrayElement(&heap, parent, i)
                    i = parent
                } else {
                    break
                }
            }
            return
        } else if heap.count == k {
            if heap[0] > val {
                return
            }
            heap[0] = val
            var i = 0
            while i <= heap.count / 2  - 1 {
                var k = i * 2 + 1
                if k + 1 < heap.count && heap[k + 1] < heap[k] {
                    k = k + 1
                }
                if heap[k] < heap[i] {
                    swapArrayElement(&heap, k, i)
                    i = k
                } else {
                    break
                }
            }
        }
    }

    func swapArrayElement(_ nums: inout [Int], _ i: Int, _ j: Int) {
        let tmp = nums[i]
        nums[i] = nums[j]
        nums[j] = tmp
    }
}
