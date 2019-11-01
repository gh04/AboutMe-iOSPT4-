// Swift Fundamentals I
let helloString = "Hello, World!"
print(helloString)


//Comments
/* Make a multiline comment
 
let name = "Gerardo"
let age = 28

*/

//Naming Properties - Identifier
//Cannot start with a number
// A-Z, a-z, _
//CamelCase
//compiler is case sensitive

let lambdaSchool = "awesome", ls100 = "100%", _travelBack = 1985
let name = "Gerardo"

print("Lambda School is \(ls100) \(lambdaSchool)")

let thisPropoertyThatHasAReallyLongName = "hello"

//Mutability
//Mutable = Can Change, Variable
//Immutable = Cannot Change, Constant

let students = 30
let staff = 6
let totalPeople = students + staff
print(totalPeople)

//Variables - Can Change
var appleCount = 10
appleCount = 12
appleCount -= 2 // -=Compound Assignemnt (appleCount = appleCount -2
appleCount += 1
print(appleCount)

//use constants until you know you need to change it.

//Type Inference - Compiler can infer the type given the value
let ios = "Apple's mobile operating system" //string
var age2 = 24 // can only change with same type. Cannot change age2 to a Double. 24.5

let price: Double = 1299.99
let onSale: Bool = false
let modelName: String = "Macbook Pro"
let discountQty: Int = 15

if onSale {
    print("\(modelName) on sale for \(price)!")
} else {
    print("\(modelName) at regular price: \(price). Buy at least \(discountQty) for special pricing.")
    
}

//Type Safety
var life = 42


//Type Coercion
//Types are never automatically converted into another type.

let label = "The width is"
let width = 94

let widthLabel = label + String(width)
print(widthLabel)

// Int, UInt (undeclared Int), Float, Double

// String Interpolation and String Concatenation
let heightLabel = "The heigh is " + "100" //needs a space
print(heightLabel)

//String Interpolation
//"blah blah blah \(inster value here)"

let anotherWidthLabel = "The width is \(width)"
print(anotherWidthLabel)

// Collections
// Array - Ordered list of items of the same type. they are stored in the positions they are put. Zero indexed - start counting at 0
var array = ["Johnny", "Josh", "Steven", "Phil"]

//Subscript Syntax
print(array[0])

//Inserting items into an array
array.append("Gerardo")
array.insert("Janee", at: 3)
print(array)
print(array[2])

//removing items
array.remove(at: 2)

//Dictionaries - Unordered list of Key-Value pairs

var occupoations = ["Malcolm" : "Caption", "Kaylee" : "Mechanic"]
if let malcolmsOccupation = occupoations["Malcolm"] {
    print(malcolmsOccupation)
} //was safely unwrapped in this instance to execute. Will not be able to use elsewhere. That's why its called safe unwrap


//Looping
//for loop

let scores = [75, 42, 103, 87, 12]
var passingStudents = 0

for scores in scores {
    if scores > 70 {
        passingStudents += 1
    }
}

print("\(passingStudents) students scored a passing grade of 70 or higher")

// Switch Statements - If else if conditianl stuff

let number = 6
switch number {
case 1:
    print("Got 1")
case 2:
    print("Got 2")
case 3, 4, 5:
    print("got 3 or 4 or 5")
case 6...22:
    print("Got 6 to 22")
default:
    print("Got default")
}

//Functions. We can call it later
//Internal and External Parameter Names

func averageScore(_ scores: [Int]) -> Int {
    var totalScore = 0
    for score in scores {
        totalScore += score
    
}
return totalScore / scores.count
}

//Tuples - are a lightweight way of grouping related values into a single compound value.

let carrots = (name: "carrots", aisle: 4, category: "produce", count: 25)

print(carrots.category)



