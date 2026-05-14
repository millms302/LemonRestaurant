import UIKit

/*
Integer is a Number
Double is a Number with a decimal point. Also called a float

 Class: A Class in Swift is a blueprint for creating objects.
    - Class Properties: The Data that the Object Stores.
    - Methods: The actions that the Object can Perform.
    - Initializers: How the Object is created.
 
 ----- Syntax -----
 class ClassName {
    // Properties
    var propertyOne: Type
    var propertyTwo: Type
 
    //Initializer: Mandatory
    init(propertyOne: Type, propertyTwo: Type){
        self.propertyOne = properlyOne
        self.propertyTwo = propertyTwo
    }
 
    // Methods: These are also optional.
    func methodName() {
        //code
    }
 
 }
 
 */


// Example #1

class Person {
    // Properties
    var name: String
    var age: Int
    
    // Initializer
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // Method
    func greet() {
        print("-- Hello, my name is \(name) --")
    }
}

// Creating an Object(instance)
let person1 = Person(name: "Mike", age: 34)
print(person1.name)
print(person1.age)
print("person1 name \(person1.name), age \(person1.age)")
person1.greet()

let person2 = Person(name: "Soupy", age: 41)
print("My name is \(person2.name) and I'm \(person2.age) years old.")
person2.greet()


// Examply #2:

class Customer {
    // Properties
    var name: String
    var email: String
    var visits: Int
    
    //Initializer
    init(name: String, email: String, visits: Int) {
        self.name = name
        self.email = email
        self.visits = visits
    }
    
    // Methods
    func greeting() -> String {
        return "Welcome Back \(name)"
    }
    func addVisit() {
        visits += 1
    }
    func summary() -> String {
        return "\(name) - Visits: \(visits)"
    }
}

let fatty = Customer(name: "Fatty", email: "fatmike@nofx.com", visits: 13)
print(fatty.name)

let smelly = Customer(name: "Smelly", email: "smelly@nofx.com", visits: 12)
print(smelly.email)

let hefe = Customer(name: "El Hefe", email: "elhefe@nofx.com", visits: 6)
let melvin = Customer(name: "Eric Melvin", email: "melyell@nofx.com", visits: 18)
let kent = Customer(name: "Kent", email: "manuhjur@nofx.com", visits: 4)

print(melvin.summary())
hefe.addVisit()
print(hefe.summary())
print(fatty.summary())

// Store the Customers in an Array.
let customers = [fatty, smelly, hefe, melvin, kent]

print("---------")
for customer in customers {
    print(customer.summary())
}

