
  


/*:
 # Fizz Buzz
 ### if number/3 = fizz
 ### if number/5 = buzz
 ### if number/3 && number/ 5 = Fizbuzz
 */

import UIKit
import PlaygroundSupport

var oneThousendNumbers:[Int] = []
for num in 1...1000 {
    oneThousendNumbers.append(num)
}

for num in oneThousendNumbers {
    if (num % 3 == 0) && (num % 5 == 0) {
        print("Fizz Buzz",num)
    }
    else if (num % 3 == 0)  {
        print("Fizz",num )
    }
    else if  (num % 5 == 0) {
        print("Buzz",num )
    }
    
}


print("Working Fine")
