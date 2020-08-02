
/*:
 # Linear & Binary Search
 - Note: Binary search is only apply on sorted arrery
 
 */

import UIKit
import PlaygroundSupport

let arrey = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

func linearSearch(arrey:[Int], number:Int) -> Bool {
    for num in arrey {
        if num == number {
            return true
        }
    }
    return false
}



func binerySearch(arrey:[Int], number:Int) -> Bool {
    var leftIndex = 0
    var rightIndex = arrey.count - 1

    while leftIndex <= rightIndex {
        let midIndex = ((leftIndex + rightIndex) / 2 )
        let midValue = arrey[midIndex]
        
        print("mid Index",midIndex ,"min Index",leftIndex,"max Index", rightIndex,"\n")
        if midValue == number {
            return true
        }
        if number < midValue  {
            rightIndex = midIndex - 1
        }
        if number > midValue  {
            leftIndex = midIndex + 1
        }
    }
    return false
}


let result = binerySearch(arrey: arrey, number: 12)
print(result)
