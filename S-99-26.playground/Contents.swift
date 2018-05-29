//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d", "e", "f"]

func combinations(n: Int, list: [Any]) -> [Any] {
    var masterList: [Any] = []
    if n > list.count {
        return ["None"]
    } else {
        for i in 0..<list.count - n {
            for j in (i + 1)..<list.count - n + 1 {
                for k in (j + 1)..<list.count - n + 2 {
                    let minorList = [list[i], list[j], list[k]]
                    masterList.append(minorList)
                }
            }
        }
    }
    return masterList
}

combinations(n: 3, list: myList)
