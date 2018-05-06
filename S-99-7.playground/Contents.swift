//: Playground - noun: a place where people can play

import UIKit

var myList = [[1, 1], 2, [3, [5, 8]]] as [Any]
let flattened = myList.compactMap {$0}

func flatten(list: [Any]) -> [Any] {
    var flattenedList = list.compactMap { $0 }
    
    for i in flattenedList {
        if i is Array<Any> {
            flattenedList = flattenedList.compactMap { $0 }
        }
    }
    return flattenedList
}

print(flatten(list: myList))
