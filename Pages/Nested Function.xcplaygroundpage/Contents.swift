//: [Previous](@previous)

import Foundation
//Nested Function
// Outer function without parameter list
func worldCup (){
    // Nested function without parameter list
    func winnerName (){
        
        print("The World Cup Winner Is: Argentina.")
    }
    winnerName()
}
worldCup()

//Add Two Strings Using Nested Function with Parameters −
func AddStrings(str1: String, str2: String) {
    
    func FinalResult(finalStr: String){
        print("Concatenated String: \(finalStr)")
    }
    let result = str1 + str2
    FinalResult(finalStr: result)
}
 var string1 = "I'm Anon and "
 var string2 = "I'm from Dhaka"

AddStrings(str1: string1, str2: string2)


//Nested Function with Return Type in Swift without return type.
func Rectangle (length: Int, width: Int){
    func displayArea (finalArea: Int){
        print("Area of Rectangle: \(finalArea)")
    }
    
    let finalResult = length * width
    displayArea(finalArea: finalResult)
}

    var l = 10
    var w = 25

Rectangle(length: 10, width: 25)

//Nested Function with Return Type in Swift
func Areas(length: Int, width: Int) {
    
    func sumOfAraes (area1: Int, area2: Int) -> Int {
        
        let Sum = area1 + area2
        return Sum
    }
    
    let areaOfRectangle = length * width
    let areaOfSquare = length * width
    
    print("Total Area: \(sumOfAraes(area1: areaOfRectangle, area2: areaOfSquare))")
}

Areas(length: 43, width: 28)
