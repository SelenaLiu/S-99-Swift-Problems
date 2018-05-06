//: Playground - noun: a place where people can play

import UIKit

var myList = ["a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]

func isEqual(a: Any, b: Any) -> Bool? {
    guard let a = a as? String, let b = b as? String else {
        return nil
    }
    
    return a == b
}

func compress(list: [Any]) -> [Any] {
    var finalList: [Any] = []
    var index = 0
    
    while index != list.count {
        if isEqual(a: list[index], b: list[index + 1])! {
            finalList.remove(at: index)
        } else {
            index += 1
        }
    }
    return list
}

print(compress(list: myList))

