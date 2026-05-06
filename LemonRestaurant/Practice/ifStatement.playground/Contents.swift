import UIKit

// var-> variable
// let -> constant

/*
    if-else statement
 
    --- Syntax ---
    if condition {
        result if condition is true
    }
    -------
    if condition{
        result is condition is true
    } else {
        result if condition is false
    }
 */
// Example 1
let age = 58

if age > 18 {
    print("You Can Drive")
}

// Example #2

var johnAge = 17

if johnAge > 18 {
    print("You Can Drive")
} else {
    print("You cannot drive yet")
}

// Example #3

var userName = "peter"

if userName == "peter" {
    print("Hey You are Peter")
    
}

// Example 4

let price = 49.99

if price > 50 {
    print("Discount Applied")
} else {
    print("No Discount")
}
// Example 5

let temperature = 36.5

if temperature > 37.0 {
    print("You have a fever")
} else {
    print("Normal Temperature")
}

// Example 6

let isOnline = true

if isOnline {
    print("User is online")
} else {
    print("User is offline")
}

// Example 7

let hasAccess = false

if hasAccess {
    print("Access Granted")
} else {
    print("Access Denied")
}

// Example 8

let password = "1234"

if password == "1234" {
    print("Correct Password")
} else {
    print("Access Denied")
}

// Example 9

var email = "pam@gmail.com"
var password2 = "1122"

if email == "pam@gmail.com" && password2 == "pam 123" {
    print("Login Successful")
} else {
    print("Login Failed")
}
 // Example 10

let studentName = "admin"
let studentPassword = "1234"
let isActive = true

if studentName == "admin" && studentPassword == "1234" && isActive {
    print("Login Successful")
} else {
    print("Login Failed")
}

// Mini Challenge #1

/**
 Create a Variable "age2"
 if the age is less than 12 -> print child ticket
 else -> adult ticket
 */

var age2 = 34

if age2 < 12 {
    print("Child ticket")
} else {
    print("Adult Ticket")
}
// Mini Challenge #2

/**
 Create a variable called isLightOn(Bool)
 if true -> print light is on
 else -> print the light is off
 */

var isLightOn = true

if isLightOn == true {
    print("The Light Is On")
} else {
    print("The Light is Off")
}

/**
 Mini Challange #3
 
 create 2 variables:
    Score(Int) -> represents exam score
    attendedClasses(bool) -> represents if the student attended classes.
 
 If students score is greater than or equal to 60 AND they attended classes -> print you passed the exam
 else -> print you failed
 */

var score = 89
var attendedClasses = true

if score > 60 && attendedClasses == true {
    print("you passed the Exam")
} else {
    print("You Failed the Exam")
}

// If - else if - else
let score2 = 75

if score2 >= 90 {
    print("Grade = A")
} else if score >= 80 {
    print("Grade = B")
} else if score2 >= 70 {
    print("Grade = C")
} else {
    print("Grade = F")
}

let professorName = "Angela"

if professorName == "Angela"{
    print("Hello Professor Angela")
} else if professorName == "Pam" {
    print("Hello Professor Pam")
} else {
    print("Hello GuestREsources")
}
