import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */


 
enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */

func calculateResult(firstNumber numberOne: Int,
                     secondNumber numberTwo: Int,
                     withCalculationType calculationType: CalculationType) -> Int {
    let result = numberOne
    switch calculationType {
    case .addition: result + numberTwo
    case .division: result / numberTwo
    case .multiplication: result * numberTwo
    case .substraction: result - numberTwo
    }
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}


/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/


calculateResult(firstNumber: 3, secondNumber: 2, withCalculationType: .addition)
calculateResult(firstNumber: 3, secondNumber: 2, withCalculationType: .division)
calculateResult(firstNumber: 3, secondNumber: 2, withCalculationType: .multiplication)
calculateResult(firstNumber: 3, secondNumber: 2, withCalculationType: .substraction)


/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */

/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsPower: Int
    
    init(name: String, productionYear: Int, horsPower: Int) {
        self.name = name
        self.productionYear = productionYear
        self.horsPower = horsPower
    }
}

var audiQ7 = Car(name: "audiQ7", productionYear: 2020, horsPower: 150)

var audiTT = audiQ7
audiTT.name = "audiTT"


func getSpecs(specs: Car) {
    print(specs)
}

getSpecs(specs: audiQ7)
getSpecs(specs: audiTT)





