import UIKit

var greeting = "Hello, playground"
var restaurantName = "Little Lemon"
print("Welcome to \(restaurantName)")

restaurantName = "Little Lemon Bistro"
print("Now we are called \(restaurantName)")

// Constants
let city = "Chicago"

//city = "New York" // error cant assign to value because is a constant
print("Our restaurant is located in \(city)")

// String
var specialDish = "Pasta"
// Integers
var availableTables = 5
// Doubles
var dishPrice = 9.98
//Booleans
var isOpen = true

print("Today's special: \(specialDish) - $\(dishPrice)")

////Mini Challenge 1:
//// Create a variable called `numberOfTables` and a constant called `ownerName`.
//// Print a sentence like:
//// “Little Lemon has 10 tables, owned by Mario.”
//
////Mini Challenge 2:
////Create one variable of each type (`String`, `Int`, `Double`, `Bool`) that describes something about a restaurant.
////Print a short description using them all in one sentence.
////Example:
////Little Lemon is open: true, has 20 tables, and our soup costs $4.99.
//
// We can also define the data type
var anotherDish: String = "Pizza"
var tableCount: Int = 10
var price: Double = 8.99
var openStatus: Bool = false

let pastaPrice = 10.50
let saladPrice = 6.25
//
let total = pastaPrice + saladPrice
print("The total is: \(total)")
//
////Mini Challenge 3:
//Add a 15% tip to the total and print the final amount.
let tip = total * 0.15
print(tip)
