//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]

func isEqual(a: Any, b: Any) -> Bool? {
    guard let a = a as? String, let b = b as? String else {
        return nil
    }
    
    return a == b
}

func pack(list: [Any]) -> [[Any]]? {
    var finalList: [[Any]] = []
    var startIndex = 0
    var endIndex = 0
    while startIndex < list.count && endIndex < list.count {
        if isEqual(a: list[startIndex], b: list[endIndex])! {
            endIndex += 1
        } else {
            var miniList: [Any] = []
            for i in startIndex..<endIndex {
                miniList.append(list[i])
            }
            finalList.append(miniList)
            startIndex = endIndex
        }
    }
    return finalList
}

pack(list: myList)
