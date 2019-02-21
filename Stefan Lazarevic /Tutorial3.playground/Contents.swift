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

