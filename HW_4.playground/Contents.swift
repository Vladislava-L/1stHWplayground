import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

// method #1 - my very simple logic

/*
let myTeam = "Girls"

var resultsOfGames = [["teamName" : "Brooklyn Nets",
                      "score"    : "99:89" ]]

print("\(myTeam) against \(resultsOfGames["teamName"]!) scored - \(resultsOfGames["score"]!)")

resultsOfGames.updateValue("109:99", forKey: "score")
print("\(myTeam) against \(resultsOfGames["teamName"]!) scored - \(resultsOfGames["score"]!)")

resultsOfGames.updateValue("Dallas Mavericks", forKey: "teamName")
resultsOfGames.updateValue("87:93", forKey: "score")
print("\(myTeam) against \(resultsOfGames["teamName"]!) scored - \(resultsOfGames["score"]!)")

resultsOfGames.updateValue("104:97", forKey: "score")
print("\(myTeam) against \(resultsOfGames["teamName"]!) scored - \(resultsOfGames["score"]!)")

resultsOfGames.updateValue("Washington Wizards", forKey: "teamName")
resultsOfGames.updateValue("117:112", forKey: "score")
print("\(myTeam) against \(resultsOfGames["teamName"]!) scored - \(resultsOfGames["score"]!)")

resultsOfGames.updateValue("107:122", forKey: "score")
print("\(myTeam) against \(resultsOfGames["teamName"]!) scored - \(resultsOfGames["score"]!)")
 */

//method #2 - better version

let myTeam = "Girls"


var resultsOfGames = [
    ["teamName" : "Brooklyn Nets",  "score"       : "99:89" ],
    ["teamName" : "Brooklyn Nets",  "score"       : "109:99" ],
    ["teamName" : "Dallas Mavericks","score"      : "87:93" ],
    ["teamName" : "Dallas Mavericks",  "score"    : "104:97" ],
    ["teamName" : "Washington Wizards",  "score"  : "117:112" ],
    ["teamName" : "Brooklyn Nets",  "score"       : "107:122" ]
    
    
]
//var resultsOfGames =  ["Brooklyn Nets1"    : "99:89",
//                       "Brooklyn Nets"    : "109:99",
//                       "Dallas Mavericks1" : "87:93",
//                       "Dallas Mavericks" : "104:97"
//]

for result in resultsOfGames {
    print("\(myTeam) against \(result["teamName"]!) scored - \(result["score"]!)" )
}


/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let arrayOfInt: [Int] = [5, 10, 20, 50, 100, 200, 500]
func calculateCash() {
    let sum = arrayOfInt.reduce(0, +)
    print("In my wallet there is \(sum) EUR")
}

calculateCash()


/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool{
    return number % 2 == 0
}

isEvenNumber(number: 10)



/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

//complicated solution for a simple task🤓🤯

func createArray(from: Int, to: Int) -> Array <Int>{
    var result: Array<Int> = []
    for value in from...to {
        result.append(value)
    }
    return result
}
var array = createArray(from: 1, to: 100)
print(array)


//but there is very simple solution

//func createArray(){
//    let array = Array(1...100)
//    print(array)
//}
//
//createArray()

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for num in array{
    if isEvenNumber(number: num) == true {
        array.remove
    } else {
        array
    }
    
}
