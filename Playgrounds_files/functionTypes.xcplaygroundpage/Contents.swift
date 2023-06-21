import UIKit

// IF

var old : Bool = false

if old {
    print("You are really old man ")
} else {
    print("You are not old ")
}


var age : Int = 17

if age > 18 {
    print("Welcome to the party :D ")
} else {
    print("No allowed")
}



// IF - control structure

var numeroSubs : Int = 10000

if numeroSubs >= 10000 {
    print("Congrants you won a price \(numeroSubs)")
    print(age)
} else if numeroSubs < 5000 {
    print("almost platium prince")
} else {
    print("keep trying")
}


// Switch - control structure
var dayOfTheWeek : String = "Wednesday"

switch dayOfTheWeek {

case "Monday":
    print("Today is monday")
case "Tuesday" :
    print("Today is tuesday")
case "Wednesday" :
    print("Today is wednesday")

default:
    print("Error 400")
    
}


// FUNC

// 1 func basic

func sayHello() {
    print("Hello :) ")
}

sayHello()

// 2 Funcion con un parameto
func sayMyName(name: String) {
    print("Mi nombre es: \(name)")
    
}

sayMyName(name: "Mark")

// 3. Func with more that one parameter

func sayMyNameAge(name: String, age : Int) {
    print("mi nombre es \(name), mi edad es : \(age) ")
}

sayMyNameAge(name: "Mark", age: 17)

// 4. Func with a return value
func sayAGrettign() -> String {
    let helloT : String = "Hello koders!"
    return helloT
}
let helloT = sayAGrettign()

print(helloT)


// 5. Func with return values and parameters

func sumTwoAges(age1 : Int, age2 : Int) -> Int {
    var sumAges : Int = age1 + age2
    return sumAges
}

let gisAge : Int =  18
let roseAge: Int = 18

sumTwoAges(age1: gisAge, age2: roseAge)

let sumTotal : Int = sumTwoAges(age1: gisAge, age2: roseAge)
print(sumTotal)

/*
//same
func sumTwoAges(age1 : Int, age2 : Int) -> Int {
    return age1 + age2
}
*/

// 6. func calling a func

func callFunction(){
    sayHello()
}

callFunction()


