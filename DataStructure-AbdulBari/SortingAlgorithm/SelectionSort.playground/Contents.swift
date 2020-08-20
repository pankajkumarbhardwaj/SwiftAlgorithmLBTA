
/*:
## Selection Sort
### We select an Position and find out the element for that Position.
### Complexity is (n-Square)
*/

import UIKit

var arrey = [11,13,7,2,6,9,4,5,10,3]
for i in 0..<arrey.count {
    var k = i
    for j in i..<arrey.count {
        if arrey[j] < arrey[k] {
            k = j
        }
    }
    arrey.swapAt(i, k)
}

print(arrey)
