//
//  Solution127Test.swift
//  LeetCodeTest
//
//  Created by zuping on 10/28/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import XCTest

class Solution127Test: XCTestCase {

    let solution = Solution127()

    func test1() {
        let result = solution.ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"])
        assert(result == 5)
    }

    func test2() {
        let result = solution.ladderLength("hit", "cog", ["hot","dot","dog","lot","log"])
        assert(result == 0)
    }

    func test3() {
        let begin = "qa"
        let target = "sq"
        let wordList  = ["si","go","se","cm","so","ph","mt",
                        "db","mb","sb","kr","ln","tm","le",
                        "av","sm","ar","ci","ca","br","ti",
                        "ba","to","ra","fa","yo","ow","sn",
                        "ya","cr","po","fe","ho","ma","re",
                        "or","rn","au","ur","rh","sr","tc",
                        "lt","lo","as","fr","nb","yb","if",
                        "pb","ge","th","pm","rb","sh","co",
                        "ga","li","ha","hz","no","bi","di",
                        "hi","qa","pi","os","uh","wm","an",
                        "me","mo","na","la","st","er","sc",
                        "ne","mn","mi","am","ex","pt","io",
                        "be","fm","ta","tb","ni","mr","pa",
                        "he","lr","sq","ye"]
        let result = solution.ladderLength(begin,target, wordList)
        assert(result == 5)
    }

}
