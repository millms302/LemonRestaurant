import UIKit

// Functions
/*
 Syntax
 
 func functionName(param1:Type, param2:Type) -> ReturnType{
    //Function Body
    // the logic goes here
 
    return value
 }
 */


// Example #1 - No Parameter
func printWelcome(){
    print("Hello Cohort 9")
}

printWelcome()

// Example #2 - With One Parameter
func greet(person:String) -> String{
    let greeting = "Hello, " + person + "!"
    return greeting
}

let message = greet(person: "John")
print(message)

// Example #3 - With 2 Parameters and an Integer
func add(num1: Int,num2: Int) -> Int{
    return num1 + num2
}

let result = add(num1: 123, num2: 983)
print("The addition is \(result)")


// Example #4 - With Name Paremeters
func multiply(_ x:Int, _ y:Int) -> Int {
    return x*y
}

print(multiply(34,98))

// Mini Challenge #1: Create a function deliveryTime(minutes:)
// That returns "Ready in X minutes".

func deliveryTime(minutes:Int) -> String{
    let response = "Ready in \(minutes)"
    
    return response
}

print(deliveryTime(minutes:50))

/* Mini Challenge #2:
    1) Define a function called welcomeStudent
    2) The function should take one parameter: a String
    3) The function should return a string.
    4) Inside the function, build a message that reads "Welcome, [name]! Ready to
        learn Swift?
    5) Call the function with a sample name and print the result
 */

func welcomeStudent(name:String) -> String{
    let welcome = "Welcome, " + name + " ready to learn Swift?"
    return welcome
}

let words = welcomeStudent(name: "Mike")
print(words)

/* Professors Solution
 func welcomeStudent(name: String) -> String{
    return "Welcome, \(name)! Ready for Swift?"
 }
 
 print(welcomeStudent(name:Mike))
 */

// Code for MDI 102 Session #2

func greet2(person: String, formally:Bool=false)->String{
    if formally {
        return "Greetings, " + person
    } else {
        return "Hi, " + person
    }
}
print(greet2(person:"Someone",formally:true))
print(greet2(person:"Someone"))

func calculateTotal(price: Double, quantity: Int) -> Double{
    return price * Double(quantity)
}

let total = calculateTotal(price: 9.99, quantity: 3)
print(total)


// 102 Session #3

let menu = [
    "Pizza": 9.99,
    "Soup": 4.50,
    "Steak": 14.99
]
for (nameP,priceP) in menu {
    printMenuItem(name:nameP,price:priceP)
}

func printMenuItem(name:String,price:Double){
    print("\(name): $\(price)")
}
