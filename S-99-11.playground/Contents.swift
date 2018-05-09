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

func encodeModified(list: [Any]) -> [Any] {
    let packedList = pack(list: list)
    var finalList: [Any] = []
    
    for array in packedList! {
        if array.count > 1 {
            let pair = [array.count, array[0]]
            finalList.append(pair)
        } else {
            finalList.append(array[0])
        }
    }
    
    return finalList
}

encodeModified(list: myList)
