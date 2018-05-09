//: Playground - noun: a place where people can play

import UIKit

let encodedList = [[4, "a"], [1, "b"], [2, "c"], [2, "a"], [1, "d"], [4, "e"]]

func isEqual(a: Any, b: Any) -> Bool? {
    guard let a = a as? String, let b = b as? String else {
        return nil
    }
    
    return a == b
}

func decode(list: [[Any]]) -> [Any] {
    var finalList: [Any] = []
    
    for item in list {
        for _ in list[0] {
            finalList.append(item[1])
        }
    }
    return finalList
}

decode(list: encodedList)

