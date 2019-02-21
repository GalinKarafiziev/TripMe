import UIKit

var str = "Hello, playground"

let yes: Bool = true
let no: Bool = false

let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let alsoTrue = !(1 == 2)

let isOneGreaterThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)

let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4

let orTrue = 1 < 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4

let andOr = (1 < 2 && 3 > 4) || 1 < 4

let guess = "dog"
let dogEqualsCat = guess == "cat"
let order = "cat" < "dog"

let stringA = "café"
let stringB = "cafe\u{0301}"

let equal = stringA == stringB

let age = 20
let isTeenager = (age>=13)&&(age<=19)
let theirAge = 30
let bothTeenagers = isTeenager && (theirAge>=13 && theirAge<=19)

let reader = "Stefan"
let author = "Math"
let authorIsReader = author==reader

let readerBeforeAuthor = reader>author

if 2 > 1 {
    print("Yes, 2 is greater than 1.")
}

let animal = "Fox"

if animal == "Cat" || animal == "Dog" {
    print("Animal is a house pet.")
} else {
    print("Animal is not a house pet.")
}

let hourOfDay = 12
var timeOfDay: String = ""

if hourOfDay < 6 {
    timeOfDay = "Early morning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
    timeOfDay = "Evening"
} else if hourOfDay < 24 {
    timeOfDay = "Late evening"
} else {
    timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

var hoursWorked = 45

var price = 0
if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}
price += hoursWorked * 25

print(price)


/*let a = 5
//let b = 10

//var min: Int = 0
if a < b {
    min = a
} else {
    min = b
}

//var max: Int = 0
if a > b {
    max = a
} else {
    max = b
}
print(max)
print(min)*/

let a = 5
let b = 10

let min = a < b ? a : b
let max = a > b ? a : b

let myAge = 20

if myAge>=13 && myAge<=19
{
    print("Teenager")
    
}
else{ print("Not teenager")}
let teenager = "Teenager"
let notTeen = "Not teenager"
let answer = myAge>=13 && myAge<=19 ? teenager:notTeen
print(answer)

var sum = 1

while sum < 1000 {
    sum = sum + (sum + 1)
}
print(sum)

var sum1 = 1
repeat {
    sum1 = sum1 + (sum1 + 1)
} while sum1 < 1000
print(sum1)

var counter = 0

while counter<10{
    let x=counter
    print("Counter is \(x)")
    counter+=1
}

let answer1 = true && true
let answer4 = false || false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer2 = ((10 / 2) > 3) && ((10 % 2) == 0)

var counter1: Double = 1

while counter1<11
{
    let power = pow(2, counter1)
    print(power)
    counter1+=1
}
let closedRange = 0...5

let count = 10
var sum23 = 0

for i in 1...count {
    sum23 += i
}
print(sum23)

let count2 = 10
var sum3 = 0
for i in 1...count2 where i % 2 == 1 {
    sum3 += i
}
print(sum3)

var sum4 = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    
    for column in 0..<8 {
        sum4 += row * column
    }
}
print(sum4)

var sum5 = 0

rowLoop: for row1 in 0..<8 {
    columnLoop: for column2 in 0..<8 {
        if row1 == column2 {
            continue rowLoop
        }
        sum5 += row1 * column2
    }
}
print(sum5)

let range1 = 1...10
let range2=range1

for range2 in range1 {
    print(pow(Double(range2),2))
}

for range2 in range1
{
    print(sqrt(Double(range2)))
}

var sum6 = 0
for row in 0..<8 where row%2==0{
   
    for column in 0..<8{
        sum6 += row * column
    }
}
print(sum6)

let number5 = 10

switch number5 {
case 0:
    print("Zero")
default:
    print("Non-zero")
}

let number6 = 10

switch number6 {
case 10:
    print("It's ten!")
default:
    break
}
let string123 = "Dog"

switch string123 {
case "Cat", "Dog":
    print("Animal is a house pet.")
default:
    print("Animal is not a house pet.")
}

let hourOfDay2 = 12
var timeOfDay2: String = ""

switch hourOfDay2 {
case 0, 1, 2, 3, 4, 5:
    timeOfDay2 = "Early morning"
case 6, 7, 8, 9, 10, 11:
    timeOfDay2 = "Morning"
case 12, 13, 14, 15, 16:
    timeOfDay2 = "Afternoon"
case 17, 18, 19:
    timeOfDay2 = "Evening"
case 20, 21, 22, 23:
    timeOfDay2 = "Late evening"
default:
    timeOfDay2 = "INVALID HOUR!"
}

print(timeOfDay2)

let hourOfDay3 = 17
var timeOfDay3: String = ""

switch hourOfDay3 {
case 0...5:
    timeOfDay3 = "Early morning"
case 6...11:
    timeOfDay3 = "Morning"
case 12...16:
    timeOfDay3 = "Afternoon"
case 17...19:
    timeOfDay3 = "Evening"
case 20..<24:
    timeOfDay3 = "Late evening"
default:
    timeOfDay3 = "INVALID HOUR!"
}
print(timeOfDay3)

let number8 = 7

switch number8 {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}

let coordinates = (x: 3, y: 2, z: 5)

switch coordinates {
case (0, 0, 0): // 1
    print("Origin")
case (_, 0, 0): // 2
    print("On the x-axis.")
case (0, _, 0): // 3
    print("On the y-axis.")
case (0, 0, _): // 4
    print("On the z-axis.")
default:        // 5
    print("Somewhere in space")
}
let coordinates2 = (x: 3, y: 2, z: 5)

switch coordinates2 {
case (0, 0, 0):
    print("Origin")
case (let x, 0, 0):
    print("On the x-axis at x = \(x)")
case (0, let y, 0):
    print("On the y-axis at y = \(y)")
case (0, 0, let z):
    print("On the z-axis at z = \(z)")
case let (x, y, z):
    print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}
let coordinates3 = (x: 3, y: 9, z: 5)

switch coordinates3 {
case let (x, y, _) where y == x:
    print("Along the y = x line.")
case let (x, y, _) where y == x * x:
    print("Along the y = x^2 line.")
default:
    break
}

let age4 = 20

switch age4{
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle aged")
default:
    print("Elderly")
}

switch coordinates {
case let (x, y, z) where x == y && y == z:
    print("x = y = z")
case (_, _, 0):
    print("On the x/y plane")
case (_, 0, _):
    print("On the x/z plane")
case (0, _, _):
    print("On the y/z plane")
default:
    print("Nothing special")
}
 var temp = 10
for _ in 0...10
{
    
    print(temp)
    temp=temp-1
}

