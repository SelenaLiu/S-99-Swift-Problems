//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "c", "d"]

func duplicate(list: [Any]) -> [Any] {
    var duplicatedList: [Any] = []
    for item in list {
        duplicatedList.append(item)
        duplicatedList.append(item)
    }
    
    return duplicatedList
}

duplicate(list: myList)
