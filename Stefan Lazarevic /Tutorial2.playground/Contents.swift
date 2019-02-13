import UIKit

var str = "Hello, playground"

let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

var integer: Int = 100
var decimal: Double = 12.5
integer = Int(decimal)

let typeInferredDouble = 3.14159

let characterDog: Character = "🐶"

var message = "Hello" + " my name is "
let name = "Stefan"
message += name
let exclamationMark: Character = "!"
message += String(exclamationMark)

let oneThird = 1.0 / 3.0
let oneThirdLongString = "One third is \(oneThird) as a decimal."

let bigString = """
You can have a string that contains multiple
lines
by
doing this.
"""
print(bigString)

let coordinates: (Int, Int) = (2, 3)
let coordinatesDoubles = (2.1, 3.5) // Inferred to be of type (Double, Double)
let coordinatesAccess = (2, 3)
let x1 = coordinates.0
let y1 = coordinates.1

let coordinatesNamed = (x: 2, y: 3) // Inferred to be of type (x: Int, y: Int)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let coordinates3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3D

let a: Int16 = 12
let b: UInt8 = 255
let c: Int32 = -100000

let answer = Int(a) + Int(b) + Int(c) // Answer is an Int
