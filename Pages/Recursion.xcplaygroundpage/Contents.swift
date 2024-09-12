//: [Previous](@previous)

import Foundation
func factorial(number: Int) -> Int {
    
    if number == 0 || number == 1 {
        return 1
    } else {
        
        return number * factorial(number: number - 1)
    }
}

let num = 4
let output = factorial(number: num)
print("Factorial of \(num) is: \(output)")


// Function to find a number from the given array using binary search
func binarySearchAlgorithm(_ arr: [Int], num: Int, leftNum: Int, rightNum: Int) -> Int? {
   if leftNum > rightNum {
      return nil
   }
    
   let midValue = leftNum + (rightNum - leftNum) / 2
    
   if arr[midValue] == num {
      return midValue
   } else if arr[midValue] < num {
      return binarySearchAlgorithm(arr, num: num, leftNum: midValue + 1, rightNum: rightNum)
   } else {
      return binarySearchAlgorithm(arr, num: num, leftNum: leftNum, rightNum: midValue - 1)
   }
}

let myArray = [11, 12, 13, 14, 15, 16, 17, 18, 19]
if let resIndex = binarySearchAlgorithm(myArray, num: 16, leftNum: 0, rightNum: myArray.count - 1) {
   print("Element found at index \(resIndex)")
} else {
   print("Element Not found")
}
