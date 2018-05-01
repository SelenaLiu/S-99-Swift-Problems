//: Playground - noun: a place where people can play

import UIKit

var myList = [1, 2, 3, 2, 1]
var mySecondList = [1, 2, 3, 4, 5]

func isPalindrome(list: [Int]) -> Bool {
    let lastIndex = list.count - 1
    for i in 0..<(list.count / 2) {
        if list[i] != list[lastIndex - i] {
            return false
        }
    }
    return true
}

isPalindrome(list: myList)
isPalindrome(list: mySecondList)
