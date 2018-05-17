//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d"]

func removeAt(index: Int, list: [Any]) -> ([Any], Any) {
    var newList = list
    var removedItem: Any = 0
    removedItem = newList[index - 1]
    newList.remove(at: index - 1)
    
    return (newList, removedItem)
}


removeAt(index: 3, list: myList)
