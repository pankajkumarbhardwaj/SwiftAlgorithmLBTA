//: A UIKit based Playground for presenting user interface
  
import UIKit

func mostCommonNameInArrey(arrey:[String]) -> String  {
    var nameCountDictionary = [String:Int] ()
    for name in arrey {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        }else {
            nameCountDictionary[name] = 1
        }
        
    }
    
    var mostCommonName = ""
    for name in arrey {
        if mostCommonName == "" {
            mostCommonName = name
        }else {
            if nameCountDictionary[name]! > nameCountDictionary[mostCommonName]! {
                mostCommonName = name
            }
        }
    }
    return mostCommonName
}

let myArrey = ["Pankaj", "Anju", "Ladu","Sachin" ,"Manisha", "Ladu"]
let ans = mostCommonNameInArrey(arrey:myArrey)
print(ans)
