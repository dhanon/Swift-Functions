import Foundation

//Overloading with Different Number of Parameters
func product(num1: Int, num2: Int){
    
    let result = num1 * num2
    print("Function-1 Product = ", result)
}

func product(num1: Int, num2: Int, num3: Int){
    
    let result = num1 * num2 * num3
    print("Function-2 Product = ", result)
}

func product(num1: Int, num2: Int, num3: Int, num4: Int){
    
    let result = num1 * num2 * num3 * num4
    print("Function-3 Product = ", result)
}

product(num1: 12, num2: 5)
product(num1: 15, num2: 45, num3: 3)
product(num1: 7, num2: 6, num3: 9, num4: 9)


//Overloading with Different Parameter Types
func Addition(number1: Int, number2: Int){
    
    let result1 = number1 + number2
    print("\nAfter Addition Number Is:", result1)
}

func Addition(number1: String, number2: String){
    
    let result1 = number1 + number2
    print("After Addition String Is:", result1)
}

Addition(number1: 35, number2: 65)
Addition(number1: "Anonying ", number2: "Anon")


//Overloading with Argument Label
func Rectangle(length: Int, width: Int){
    
    let result2 = length * width
    print("\nArea of Rectangle-1 Is:", result2)
}

func Rectangle(Length: Int, Width: Int){
    
    let result2 = Length * Width
    print("Area of Rectangle-2 Is:", result2)
}

Rectangle(length: 12, width: 3)
Rectangle(Length: 23, Width: 43)
