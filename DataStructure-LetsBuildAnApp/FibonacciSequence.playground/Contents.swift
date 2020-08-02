
import UIKit
import PlaygroundSupport

func fibForTheSteps(steps:Int) -> [Int] {
    var sequence = [0,1]
    if steps <= 1 {
        return sequence
    }
    for _ in  0...steps-2 {
        let secLast = sequence[sequence.count-2]
        let last = sequence.last
        let new = secLast + last!
        sequence.append(new)
    }
    return sequence
}

let fibArrey = fibForTheSteps(steps: 2)


//: ### Using Rescursion


func fibUsingRecursion(first:Int,second:Int,numOfSteps:Int) -> [Int] {
    if numOfSteps == 0 {
        return []
    }
    return [first + second] + fibUsingRecursion(first: second, second: first + second, numOfSteps: numOfSteps - 1)
}

[0,1] + fibUsingRecursion(first: 0, second: 1, numOfSteps: 10)
