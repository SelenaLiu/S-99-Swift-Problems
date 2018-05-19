//: Playground - noun: a place where people can play

import UIKit

func range(start: Int, end: Int) -> [Int] {
    var list: [Int] = []
    for i in start..<(end + 1) {
        list.append(i)
    }
    return list
}

range(start: 4, end: 9)
