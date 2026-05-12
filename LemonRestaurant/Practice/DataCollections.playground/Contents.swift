import UIKit

// ARRAYS
let dishes = ["Pizza", "Pasta", "Gnochi"] // Creating an Array
print(dishes[0])
print(dishes[1])

// Creating a Mutable array
var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders)


// DICTIONARIES
let menuPrices = [
    "Pizza": 12.99,
    "Salad": 13.80,
    "Pasta": 9.50
]

print(menuPrices["Salad"]!)

let drinks = [
    "Coffee": 3.50,
    "Fit'z Soda": 4.00,
    "Water": 0.00,
    "Juice": 2.00,
    "Beer": 5.00
]

print("The Price of Coffee is", drinks["Coffee"]!)

// FOR EACH
let fruits = [
    "Apple":1.5,
    "Banana":0.58,
    "Mango":2.5
]

fruits.forEach { fruit, price in
    print("\(fruit): $ \(price)")
}

drinks.forEach{ drink, price in
        print("\(drink): $\(price)")
}
