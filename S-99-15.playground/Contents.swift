//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "c", "d"]

func duplicateN(n: Int, list: [Any]) -> [Any] {
    var finalList: [Any] = []
    for item in list {
        var i = 0
        while i < n {
            finalList.append(item)
            i += 1
        }
    }
    return finalList
}

duplicateN(n: 3, list: myList)
