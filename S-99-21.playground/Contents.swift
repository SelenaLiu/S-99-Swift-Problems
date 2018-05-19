//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d"]

func insertAt(item: Any, i: Int, list: [Any]) -> [Any] {
    var finalList = list
    finalList.insert(item, at: i)
    
    return finalList
}

insertAt(item: "new", i: 1, list: myList)
