//: Playground - noun: a place where people can play

import UIKit

let myList = ["a", "b", "c", "d", "e", "f", "g"]

func randomPermute(list: [Any]) -> [Any] {
    var permute: [Any] = []
    var index = -1
    
    func random() -> Int {
        var randomNumber = arc4random_uniform(UInt32(list.count))
        while index == randomNumber {
            randomNumber = arc4random_uniform(UInt32(list.count))
        }
        index = Int(randomNumber)
        return Int(randomNumber)
    }
    
    for x in 0..<list.count {
        permute.append(list[random()])
    }
    return permute
}

randomPermute(list: myList)
