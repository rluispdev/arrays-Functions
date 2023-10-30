import UIKit

var grade1 = 46
var grade2 = 5
var grade3 = 15

var average = Double(grade1 + grade2 + grade3) / 3.0
print("Average grade: \(average)")


var arrayOfInts: [Int]
var arrayOfStrings: [String] = ["Nós", "❣️", "Swift"]
var emptyArray: [Int] = []

var listOfNumbers = [1,2,3,10, 100]
var listOfNames = ["Andrei", "Silvo", "Claudio"]

for number in listOfNumbers {
    print(number)
}

for name in listOfNames {
    print("Hello " + name + "!")
}

print(listOfNumbers.count)

listOfNumbers[0]
listOfNumbers[1]
listOfNumbers[2]
listOfNumbers[3]
listOfNumbers[4]

listOfNumbers[1...2]



for index in listOfNumbers {
    print(index)
}


var numbers: [Int] =  [ ]

for i in 1...5 {
    numbers.append(i)
   // print(numbers)
}
print(numbers)

var myNumbers: [Int] = [1, 2, 3]

myNumbers.insert(0, at: 0)
myNumbers.insert(9, at: 1)

print(myNumbers)

var otherNumbers: [Int] = [1,2,3]
otherNumbers += [4, 5, 6]
otherNumbers += [7]

print("Your new arry are: \(otherNumbers)")

myNumbers.remove(at: 3)
print(myNumbers)

var thisNumbers: [Int] = [1,2,3]
thisNumbers[0] = 7
thisNumbers[1] = 5
thisNumbers[2] = 4

print(thisNumbers)
