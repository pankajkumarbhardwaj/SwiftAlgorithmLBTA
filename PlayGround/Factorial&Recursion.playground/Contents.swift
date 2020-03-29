//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func recursivefactorialOfValue(value:UInt) -> UInt {
    if value == 0 {
        return 1
    }
    print(value)
    return value * recursivefactorialOfValue(value: value - 1)
}

let result = recursivefactorialOfValue(value:5)
print(result)
