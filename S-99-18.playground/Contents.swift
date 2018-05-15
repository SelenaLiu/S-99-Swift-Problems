//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]

func slice(start: Int, end: Int, list: [Any]) -> [Any] {
    var slicedList: [Any] = []
    for i in start..<end {
        slicedList.append(list[i])
    }
    return slicedList
}

slice(start: 3, end: 7, list: myList)
