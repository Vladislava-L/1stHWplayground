import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let rate = 1
let period = 2
let sum = 100
var totalProfit = 0.0

for _ in 1...period {
    let currentProfit = (Double(sum) + totalProfit) * Double(rate) / 100
    totalProfit += currentProfit
}

let profit = String(format: "%.2f", totalProfit)
let deposit =  String(format: "%.2f", Double(Double(sum) + totalProfit))

print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let arrayOfIntegers = [1, 2, 3, 4, 5, 6]
var arrayOfEvenNumbers: [Int] = []
for integer in arrayOfIntegers {
    if integer % 2 == 0 {
        arrayOfEvenNumbers.append(integer)
    }
}

print("My even numbers are: \(arrayOfEvenNumbers)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

let randomNumbers: Set = [1,3,6,4,5,6,7]
var counter = 0

for num in randomNumbers {
    if num != 5 {
        counter += 1
    } else {
        break
    }
}

print("Number 5 will be after \(counter) shuffles.")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var topOfPost = 10
let metersDay = 2
let metersNight = -1
var totalMeters = 0
var numberOfDays = 0

for _ in 1...topOfPost  {
    totalMeters = totalMeters + metersDay + metersNight
        
    if totalMeters != topOfPost {
        numberOfDays += 1
    } else {
        break
    }
}
 
print("Bug will spend \(numberOfDays) days to reach top of the post.")
