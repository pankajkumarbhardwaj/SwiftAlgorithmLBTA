/*:
 ## Bubble Sort
 ### Largest element goes to the end
 ### Complexity is (n-Square)
 */

var myData = [1,0,2,7,3,4,5,6,2]

let count = myData.count - 2
for i in 0...count {
    var flag = 0
    for j in 0...count - i {
        if myData[j] > myData[j+1] {
            flag = 1
            let current = myData[j]
            myData[j] = myData[j+1]
            myData[j+1] = current
        }
    }
//    print(myData)
    if flag == 0  {
        break
    }
}
print("Final Arrey",myData)
