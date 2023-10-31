import UIKit

//Intro
var grade1 = 46
var grade2 = 5
var grade3 = 15

var average = Double(grade1 + grade2 + grade3) / 3.0
print("Average grade: \(average)")


var arrayOfInts: [Int]
var arrayOfStrings: [String] = ["Nós", "❣️", "Swift"]
var emptyArray: [Int] = []

//MARK: - Obtendo Valores
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

//MARK: - Adicionando Valores

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

//MARK: - Remeovendo valores
myNumbers.remove(at: 3)
print(myNumbers)

//MARK: - Alterando valores
var thisNumbers: [Int] = [1,2,3, 4, 5]
thisNumbers[0] = 7
thisNumbers[1] = 5
thisNumbers[2] = 4

print(thisNumbers)

thisNumbers [2...4] = [0, 0]
print("New numbers  \(thisNumbers)")


//MARK: - Inferencia de tipo
var arrayNumbers = [1,2,3]
var arrayStrings = ["We", "❣️", "Swift"]
var arrayBools = [true, false, true, true, false]
var emptyArrayOfInts: [Int] = []


var  myNum = otherNumbers
otherNumbers.append(90)

print("My Num is  \(otherNumbers)")

//MARK: - Mutabilidade: var = variavel mutavel , let = cosntante imutavel


//MARK: - Listando o maior valor de um array

var valores = [34, 55, 89,  7, 8, 41, 0, 90, 6]
var valorInicial = valores[0]

for  x in valores {
    if valorInicial < x {
        valorInicial = x
    }
}
 
print("O maior valor do array é \(valorInicial).")

///X representa todos elementos do array. E a condição diz: Toda vez que o valorInicial, que é variável declarada que se inicia no índex 0 do array, for menor, na comparação do elemento x do array, ela vai ser substituída pelo   maior  elemento do array que armazenará o valor máx do array.
