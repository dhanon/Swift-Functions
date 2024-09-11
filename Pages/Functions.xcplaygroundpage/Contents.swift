import UIKit
import CoreGraphics

/*Function Syntax:
func funcname(Parameters(N.B: Always follow the Tuple) -> returntype {
   Statement1
   Statement2
   ---
   Statement N
   return parameters
}*/

//Function 1: Named Tuple Elements
func studentData(name: String, id: Int) -> (studentName: String, studentID: Int) {
    return ("Anon", 153017042)
}

let data = studentData(name: "Anon", id: 153017042)
print("Student Name:", data.studentName, "\nStudent ID:", data.studentID)

//Function 2: Unnamed Tuple Elements
/*func studentData(name: String, id: Int) -> (String, Int) {
    return ("Anon", 017)
}

let data = studentData(name: "Anon", id: 017)
print("Student Name:", data.0, "\nStudent ID:", data.1)*/

/*=>Type of Function Parameters in Swift
Regular Parameters
Varadic Parameters
In-Out parameters*/

//regular parameters
func Sum(num1: Int, num2: Int = 2) -> Int {
    
    var result = 0
    result = num1 + num2
    return result
}

print("\nSum 1:", Sum(num1: 10))
print("Sum 2:", Sum(num1: 20, num2: 12))

//varadic parameters
func Production(_ num: Int...) -> Int {
    
    var result = 1
    for x in num{
        result *= x
    }
   return result
}

print("\nProduct:", Production(10, 20, 30))


//function with in-out parameters.
func swap(_ x: inout Int, _ y: inout Int) -> Void {
    
    let temp = x
    x = y
    y = temp
}

var p = 10
var q = 20

print("\nBefore Swapping: p = \(p), q = \(q)")
swap(&p, &q) //& operator is used to pass the variables by reference
print("After Swapping: p = \(p), q = \(q)")


//Function Argument label and Parameter name in Swift
func pow(firstArg a: Int, secondArg b: Int) -> Int {
    
    var res = a
    for _ in 1..<b {
        res *= a
    }
    
    return res
}
 print("\nPower Value:", pow(firstArg: 5, secondArg: 3))

// Function 2 with parameter names and without argument label
func product (_ a: Int, b: Int) -> Int {
    
    let res = a * b
    return res
    
}

print("Product Value:", product(5, b:3))


/*Parameters and Return Values in Swift
Function with parameters
Function without parameters
Function with return type
Function without return type
Function with optional return type*/

//Functions with Parameters
// Function with two parameters
func mult(no1: Int, no2: Int) -> Int {
   return no1 * no2
}
print("\n1st Value:", mult(no1: 2, no2: 20))
print("2nd Value:", mult(no1: 3, no2: 15))
print("3rd Value:", mult(no1: 4, no2: 30))

//Function without parameters
func votersName() -> String {
    
    return "Alice"
}
print("\nVoter Name:", votersName())

//Function with return type
// Function to find out the largest and smallest number in a given array
func ls(array: [Int]) -> (large: Int, small: Int) {
   var lar = array[0]
   var sma = array[0]
    
for i in array[1..<array.count]
    {
       // If the value is lesser than the previous one it is stored in 'sma' argument
       if i < sma {
          sma = i
       }
       // Otherwise it is stored in 'lar' argument
       else if i > lar {
          lar = i
       }
    }
    // Returning multiple values using tuple
    return (lar, sma)
 }

 let num = ls(array: [40, 12, -5, 78, 98])
 print("\nLargest number is: \(num.large) and smallest number is: \(num.small)")

//Functions without Return Values
func sum(a: Int, b: Int) {
   let a = a + b
   let b = a - b
   print(a, b)
}

print("\nFunctions without Return Values:")
sum(a: 20, b: 10)
sum(a: 40, b: 10)
sum(a: 24, b: 6)


//Function with optional return type
func minMax(array: [Int]) -> (min: Int, max: Int)? {

   if array.isEmpty { return nil }
   var currentMin = array[0]
   var currentMax = array[0]
    
   for value in array[1..<array.count]
   {
      if value < currentMin {
         currentMin = value
      } else if value > currentMax {
         currentMax = value
      }
   }
   return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
   print("\nmin is \(bounds.min) and max is \(bounds.max)")
}


//Function Types
//Assign Function to a variable
func sum2(a: Int, b: Int) -> Int {
   return a + b
}

// Assigning a function to a variable
var addition: (Int, Int) -> Int = sum2
print("\nResult: \(addition(40, 89))")


//Function Types as Parameter Types
func add(_ x: Int, _ y: Int) -> Int {
   return x + y
}

//Function type as a parameter
func Display(_ myOperation: (Int, Int) -> Int, _ p: Int, _ q: Int) -> Int {
   return myOperation(p, q)
}

// Passing function as an argument
let sum = Display(add, 5, 7)

print("\nSum: \(sum)")


//Function Types as Return Types
func Add(_ x: Int, _ y: Int) -> Int {
   return x + y
}

// Display() function will return add() function
func Display()->(Int, Int) -> Int {
   return Add
}

let myFunc = Display()
let result = myFunc(9, 2)

print("\nSum: \(result)")
