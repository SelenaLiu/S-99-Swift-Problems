//: Playground - noun: a place where people can play

import UIKit

func lotto(n: Int, m: Int) -> [Int] {
    var lotto: [Int] = []
    var index = -1
    func random() -> Int {
        var randomNumber = arc4random_uniform(UInt32(m + 1))
        while index == randomNumber {
            randomNumber = arc4random_uniform(UInt32(m + 1))
        }
        index = Int(randomNumber)
        return Int(randomNumber)
    }
    for x in 0..<n {
        lotto.append(random())
    }
    return lotto
}

lotto(n: 6, m: 49)
