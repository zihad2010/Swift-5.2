import UIKit

let numbers = [1,2,3,4,5,6,7,8,9,10]
let filteredList = filterWithPredicateClosure(closure:{(num) -> Bool in
    num > 5
},numbers: numbers)


func filterWithPredicateClosure(closure:(Int) -> Bool,numbers:[Int]) -> [Int] {
    var findingNums = [Int]()
    for num in numbers {
        if closure(num){
            findingNums.append(num)
        }
    }
    return findingNums
}

print(filteredList)
