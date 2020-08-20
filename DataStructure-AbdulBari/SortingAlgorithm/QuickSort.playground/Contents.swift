/*:
## Quick Sort
###  We select an element and find out the position for element.
### Complexity is o(n log n)
*/

import UIKit

//: ###  1. Write a swap method to exchange value
func mySwap<T: Comparable>(leftValue: inout T, rightValue: inout T) {
    (leftValue,rightValue) = (rightValue,leftValue)
}

/*:
 ###  2. Create a partition function(Find Pivot index)
 - Itrate a loop from startIndex to lastIndex - 1
 - Define a variable q and initilize it with start index
 - If arrey[index] < arrey[endIndex] then swap q value with index and increase q by 1.
 - then swap (lastIndex - 1) value to last index
*/

func partition<T:Comparable>(arrey: inout [T], startIndex:Int, endIndex:Int) -> Int {
    var q = startIndex
    for index in startIndex..<endIndex {
        if arrey[index] < arrey[endIndex] {
            arrey.swapAt(q, index)
            q += 1
        }
    }
    arrey.swapAt(q, endIndex)
    return q
}

func quickSort<T:Comparable>(array: inout [T],startIndex:Int, endIndex:Int) {
    if startIndex >= endIndex {
        return
    }
    let placedItemIndex = partition(arrey: &array, startIndex: startIndex, endIndex: endIndex)
    quickSort(array: &array, startIndex: startIndex, endIndex: placedItemIndex-1)
    quickSort(array: &array, startIndex: placedItemIndex + 1, endIndex: endIndex)
}

var numbers = [13, 77, 20, 45, 2, 15, 0, 59, 5, 68, 51, 1, -1, 77] // 14 element
quickSort(array: &numbers, startIndex: 0, endIndex: 13)









//var numbers = [13, 4, 20, 5, 2,7]
//  = [4,7,20,5,2,13] q =  1, index = 0
// = [4,5,20,7,2,13] q = 2, index = 2
// = [4,5,2,7,20,13], q =  3, index = 3
// = []

//func partition<T: Comparable>(array: inout [T], startIndex: Int, endIndex: Int) -> Int {
//    var q = startIndex
//    for index in startIndex..<endIndex {
//        if array[index] < array[endIndex] {
//            array.swapAt(q, index)
//            //swap(leftValue: &array[q], rightValue: &array[index])
//            q += 1
//        }
//    }
//    array.swapAt(q, endIndex)
//    print("value of q before return: ", q)
//    print(array)
////    swap(leftValue: &array[q], rightValue: &array[endIndex])
//
//    return q
//}



//func quickSort<T: Comparable>(array: inout [T], startIndex: Int, endIndex: Int) {
//    // Base case
//    print("\n .......Recursive Call")
//    print("arrey: ",array, "startIndex: ", startIndex, "endIndex:",endIndex )
//    if startIndex >= endIndex {
//        print("....Return  startIndex >= endIndex .......")
//        return
//    }
//
//    let placedItemIndex = partition(array: &array, startIndex: startIndex, endIndex: endIndex)
//    print("\n placedItemIndex: ", placedItemIndex)
//
//    print("endIndex: placedItemIndex-1")
//    quickSort(array: &array, startIndex: startIndex, endIndex: placedItemIndex-1)
//    print(array)
//
//    print("startIndex: placedItemIndex+1")
//    quickSort(array: &array, startIndex: placedItemIndex+1, endIndex: endIndex)
//    print(array)
//}



//var numbers = [13, 4, 20, 5, 2,7]
//quickSort(array: &numbers, startIndex: 0, endIndex: 5)
