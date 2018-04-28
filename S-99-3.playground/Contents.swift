//: Playground - noun: a place where people can play

import UIKit

var myList = [1, 1, 2, 3, 5, 8]

func nth(index: Int, list: [Any]) -> Any {
    return list[index]
}

print(nth(index: 2, list: myList))
