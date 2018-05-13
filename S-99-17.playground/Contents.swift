//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]

func split(n: Int, list: [Any]) -> ([Any], [Any]) {
    var inputtedList = list
    var listOne: [Any] = []
    var listTwo: [Any] = []
    
    for i in 0..<(n-1) {
        listOne.append(list[i])
        inputtedList.remove(at: i)
    }
    listTwo = inputtedList
    
    return (listOne, listTwo)
}

split(n: 3, list: myList)

