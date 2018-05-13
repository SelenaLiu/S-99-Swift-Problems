//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]

func drop(n: Int, list: [Any]) -> [Any] {
    var newList = list
    newList.remove(at: n-1)
    return newList
}

drop(n: 3, list: myList)
