
  
import UIKit

/*:
## What is Palindrom String ?
### if any string is equal to its reverse then the string is palindrom
*/

func reverseASentance(sentance:String) -> String {
    let senArrey = sentance.components(separatedBy: " ")
    var newSen = ""
    for sen in senArrey {
        if newSen != "" {
            newSen =   " " + newSen
        }
        newSen = sen + newSen
    }
    return newSen
}
let sen = "My Name Is Pankaj"
let revSen = reverseASentance(sentance: sen)
print(revSen)



func reverseString(string:String) -> String {
    var revString = [Character]()
    for charecter in string {
        revString.insert(charecter, at: 0)
    }
    return String(revString)
}
let myName = "Pankaj"
let ans = reverseString(string: myName)
print(ans)



func reverseString2(wordToReverse: String) -> String {
    guard wordToReverse.count > 1 else {
        return wordToReverse
    }
    
    var newWord = Array(wordToReverse)
    let maxIndex = newWord.count - 1
    
    for i in 0...maxIndex {
        if i > (maxIndex - i) {
            break
        }
        (newWord[i], newWord[maxIndex - i]) = (newWord[maxIndex - i], newWord[i])
        //print(newWord)
    }
    return String(newWord)
}

let myName2 = "Sachin"
let ans2 = reverseString2(wordToReverse: myName2)
print(ans2)
