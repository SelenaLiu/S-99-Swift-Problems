//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]

func rotate(n: Int, list: [Any]) -> [Any] {
    var finalList: [Any] = []
    if n > 0 {
        finalList.append(contentsOf: list[n..<list.count])
        for i in 0..<n {
            finalList.append(list[i])
        }
    } else {
        for i in (list.count +  n)..<list.count {
            finalList.append(list[i])
        }
        finalList.append(contentsOf: list[0..<(list.count +  n)])
    }
    
    return finalList
}


rotate(n: 3, list: myList)
rotate(n: -2, list: myList)
