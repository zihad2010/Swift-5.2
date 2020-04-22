import UIKit

let numbers = [1,2,3,4,5,6,7,8,9,10]
/*let filteredList = filterWithPredicateClosure(closure:{(num) -> Bool in
 return num > 5
 },numbers: numbers)*/


func filterWithPredicateClosure(closure:(Int) -> Bool,numbers:[Int]) -> [Int] {
    var findingNums = [Int]()
    for num in numbers {
        if closure(num){
            findingNums.append(num)
        }
    }
    return findingNums
}

func greaterThenThree(value: Int) -> Bool{
    return value > 3
}

func dividedByFive(value:Int) -> Bool{
    return value % 5 == 0
}

//let filteredList = filterWithPredicateClosure(closure: greaterThenThree, numbers: numbers)
let filteredList = filterWithPredicateClosure(closure: dividedByFive, numbers: numbers)
print(filteredList)

// - Difference btw nonescaping and escaping-

// nonescaping.....
/*func addingTwoNumber(completion:(Int,Int) -> Int,num_a: Int, num_b: Int) -> Int{
    print("start call completion")
    let sum = completion(num_a,num_b)
    print("end call completion")
    return sum
}

let sum = addingTwoNumber(completion: { (a, b) -> Int in
    return a + b
}, num_a: 5, num_b: 10)

print(sum)*/

// escaping.....
func addingTwoNumber(completion:@escaping(Int,Int) -> Int,num_a: Int, num_b: Int) -> Int{
    print("start call completion")
    
    var sum = Int()
    DispatchQueue.main.asyncAfter(deadline:  .now()+2) {
        sum = completion(num_a,num_b)
        print("end call completion:",sum)
    }
    print("end without completion and completion will end after deadline.")
    return sum
}

let sum = addingTwoNumber(completion: { (a, b) -> Int in
    return a + b
}, num_a: 5, num_b: 10)

print(sum)

