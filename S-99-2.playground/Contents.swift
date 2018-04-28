//: Playground - noun: a place where people can play

import UIKit

let myList = [1, 2, 3, 4, 5, 8]

func penultimate(list: [Any]) -> Any {
    let index = list.count - 2
    return list[index]
    
}

print(penultimate(list: myList))
