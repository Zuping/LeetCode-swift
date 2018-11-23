//
//  Solution253.swift
//  LeetCode
//
//  Created by zuping on 11/14/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa


class Solution253: NSObject {
    func minMeetingRooms(_ intervals: [Interval]) -> Int {
        guard intervals.count > 0 else { return 0 }
        let intervals = intervals.sorted(by: {
            if $0.start != $1.start {
                return $0.start < $1.start
            } else {
                return $0.end < $1.end
            }
        })
        var heap = [intervals[0].end]
        for idx in 1 ..< intervals.count {
            let interval = intervals[idx]
            if interval.start >= heap[0] {
                heap[0] = interval.end
                siftDown(&heap, 0)
            } else {
                heap.append(interval.end)
                insert(&heap, heap.count - 1)
            }
        }
        return heap.count
    }

    func insert(_ heap: inout [Int], _ i: Int) {
        var i = i
        while i > 0 {
            let parent = (i - 1) / 2
            if heap[parent] < heap[i] {
                break
            } else {
                heap.swapAt(parent, i)
                i = parent
            }
        }
    }

    func siftDown(_ heap: inout [Int], _ i: Int) {
        var i = i
        while i < heap.count / 2 {
            var k = i * 2 + 1
            if k + 1 < heap.count && heap[k + 1] < heap[k] {
                k = k + 1
            }
            if heap[i] < heap[k] {
                break
            } else {
                heap.swapAt(i, k)
                i = k
            }
        }
    }
}
