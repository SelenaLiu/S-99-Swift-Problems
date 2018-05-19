//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d", "e", "f", "g", "h"]

func randomSelect(n: Int, list: [Any]) -> [Any] {
    var result: [Any] = []
    var index: Int = -1
    func random() -> Int {
        var randomNumber = arc4random_uniform(UInt32(list.count))
        while index == randomNumber {
            randomNumber = arc4random_uniform(UInt32(list.count))
        }
        index = Int(randomNumber)
        return Int(randomNumber)
    }
    for i in 0..<n {
        
            result.append(list[random()])
    }
    
    return result
}

randomSelect(n: 3, list: myList)
randomSelect(n: 3, list: myList)
