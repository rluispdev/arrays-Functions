import UIKit
import Foundation
import SwiftUI

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

var valores = [ 34, 55, 89,  7, 8, 41, 0, 90, 6]
var valorInicial = valores[0]

for  x in valores {
    if valorInicial < x {
        valorInicial = x
    }
}
 
print("O maior valor do array é \(valorInicial).")

///X representa todos elementos do array. E a condição diz: Toda vez que o valorInicial, que é variável declarada que se inicia no índex 0 do array, for menor, na comparação do elemento x do array, ela vai ser substituída pelo   maior  elemento do array que armazenará o valor máx do array.

//MARK: - Retornando um valores impares

for x in valores {
    if x % 2 != 0 {
        print( "This a odd number \(x).")
    }
}
/// Codigo que imprime todos os valores impares de um array do tipo Int, onde  X representa todos elementos do array/ E a condicão diz: Se o  X for dividido por 2  e o resto for difrente (!=) de 0 print(x) porque todo numero par divido por 2 tem um resto 0.

//MARK: - Somando todos valores do array
var sum = 0
for x in valores {
    sum += x
}
print(sum)

///O código soma todos os elementos do array. Declaramos uma var = 0 e o X representa todos elementos do array, onde dentro do loop for_ in, começa com 0 e soma e armazena o elemento do array a cada interação do loop. Por causa da presença do operador +=, por exemplo,  0 += 34, ficaria 34 += próximo elemento do array...

//MARK: - Printando um index de um array

var names = ["apple", "banana", "cherry", "mango"]

var e = "cherry"

//Genérico
for e in names {
    if let index = names.firstIndex(of: e){
        print("Index of \(e) is \(index).")
    }
}

//Swift
names.forEach { e in
    if let index = names.firstIndex(of: e){
        print("Index2 of \(e) is \(index).")
    }
}

//SwiftUI
ForEach(Array(names.enumerated()), id: \.0) { index, name in
    Text("Index \(index): \(name)")
}


/// Os 3 tipos de loop mosntram a impressão do index de um array   num loop generico, swift e SwiftUI, o generico  for_in {}  e o Swift forEach {in},  fazem a mesma coisa   procura o elemento dentro do array e nesse caso  temos um método firstIndex(of: ) que recebe uma variavel com um elemento do array e usa seu index, ele faz isso para rodos os elementos subsequentes,  usamos o nome do array no lugar de for e acrecentamos a palavra forEach, já no SwiftUI temos o ForEach, que tem um método Array que converte a funcao .enumereted em um array de tuplas, onde o ID seleciona o índice 0 e depois é chamado no tanto  index como o name em um text para ser exibido para o usuario ForEach() {}

//MARK: - Imprimindo um loop na ordem inversa

var inverseNumbers = [0, 1, 2, 3, 4, 5, 6]


var num = inverseNumbers.reversed()
for i in num {
        print(i)
    }

var o = inverseNumbers.count - 1
while o >= 0 {
    print("This is while \(inverseNumbers[o])")
    o -= 1
}

for i in 1...inverseNumbers.count {
    print("THis for in 2  \(inverseNumbers[inverseNumbers.count - i])")
}

/*
 Nesta abordagem mais direta e legível, você usa o método reversed() para criar uma cópia invertida do array inverseNumbers. Em seguida, você usa um loop for-in para iterar pelos elementos da cópia invertida e imprimir os elementos na ordem inversa.
 Usando um while loop:

 Aqui, você utiliza um loop while para iterar pelos elementos do array inverseNumbers na ordem inversa. Começa pelo último índice do array (count - 1) e diminui o índice em cada iteração até chegar ao índice 0. Isso permite imprimir os elementos na ordem inversa.
 Usando um segundo for-in loop:

 Nesta abordagem, você usa um segundo loop for-in com um intervalo de 1 a inverseNumbers.count. A cada iteração, você calcula o índice reverso correspondente (inverseNumbers.count - i) e imprime o elemento do array na ordem inversa.
 */
//MARK: - Array  que retorna valores aleatórios

var shuflleNumbers = [1, 2, 3, 4, 5]
shuflleNumbers.shuffle()
print("Método Shuffle: \(shuflleNumbers)")

var firstIndex = 0
var lastIndex = shuflleNumbers.count - 1

for _ in shuflleNumbers {
   if  firstIndex > lastIndex {
       var tmp = shuflleNumbers[firstIndex]
       shuflleNumbers[firstIndex] = shuflleNumbers [lastIndex]
       shuflleNumbers[lastIndex] = tmp
       
       firstIndex += 1
       lastIndex -= 1
    }
}
print("For_in: \(shuflleNumbers)")


 while  firstIndex > lastIndex {
       var tmp = shuflleNumbers[firstIndex]
       shuflleNumbers[firstIndex] = shuflleNumbers [lastIndex]
       shuflleNumbers[lastIndex] = tmp
       
       firstIndex += 1
       lastIndex -= 1
    }
print("While: \(shuflleNumbers)")

 
//MARK: -  Pesquisa/ Filter

var listsOfNumbers = [1, 2, 3, 10, 100]

var x = 10

var xAppears = false

for number in listOfNumbers {
    if number == x {
        xAppears = true
    }
}

if xAppears {
    print("yes")
} else {
    print("no")
}
 
let searchNumber = listsOfNumbers.filter { num in
    return x == num
}
print(x)

//Filter
let shortNumbers = listsOfNumbers.filter { num in
   return String(num).count > 2
}
if let index =  listsOfNumbers.firstIndex(of: x){
    print("O valor \(x) está na posição \(index) do array.")
} else {
    "O valor \(x) não foi encontrado no array."
}

//O código começa com um array de inteiros, em seguida é declarado uma variável do tipo inteiro e uma do tipo bool, depois inteiramos o array num loop onde usamos uma condição comparando os elementos do loop com a variável criada. Em resumo, esse código compara x com os elementos do array e retorna se x está ou não presente no array retornando yes caso esteja e no caso não esteja.


// O segundo código é uma variável computada que filtra o array de numeros inteiros listsNumbers e compara se   x que  é uma variavel  declarada do tipo inteiro é igual a um elemnto do array, se for retorna true se nao retorna false.

//Refatorando - Temos uma variavel computada de um array com metodo filter para  cada elemento do array, é  verificado esse elemento  é igual a x , se for o elemento é retornado.

//Temos uma variável computada que filtra o array com método filter em busca de algum elemento que tenha mais de 2 caracteres, se encontrado este é retornado.

// Temos uma variável calculada que usa o método firstIndex(of:), para buscar o valor x no array. Se o valor estiver presente no array, ele imprime a posição desse valor armazenada na variável index. Se o valor não for encontrado, ele imprime uma mensagem dizendo que o valor em questão não foi encontrado no array.

//MARK: - Intersection

var emojinsSky = ["☺️", "😮", "😇", "🥲", "🥹"]
var emojinsHell = ["☺️", "😮", "😈", "🥲", "🤤"]

 
for emoj2 in emojinsHell {
    for emoj in emojinsSky{
        if emoj == emoj2 {
            print(emoj)
            break
        }
    }
}

//Consigo fazer a intersection com filter
let emojIntersection = emojinsSky.filter { emoj in
    return emojinsHell.contains(emoj)
}
print(" 👾 \(emojIntersection) ")

 
// Fazendo uma interseção entre dois arrays. Usamos um loop 'for-in' para percorrer os elementos do array 'emojinsSky' e criamos outro dentro do mesmo loop 'for-in' para percorrer o array 'emojinsHell'. Em seguida, aplicamos uma condição para ambos: se o elemento do primeiro array for igual ao elemento do segundo, imprimimos o elemento.

//Fazendo uma interseção entre dois arrays. Este código utiliza o filter para comparar e retornar os elementos iguais de dois arrays.

//MARK: - Divisors

var divisors = [2, 4]

for number in valores {
    for divisor in divisors {
        if number % divisor == 0{
            print("Result: \(number)")
            break
        }
    }
}

let divNumbers = valores.filter { num in
    if num % 2 == 0 {
        print("Func \(num)")
    }
    return true
}
 
//Numeros pares e impares com reduce
let divide = valores.reduce(into:([Int](), [Int]())) { result, num in
    if num % 2 == 0 {
        result.0 .append(num)
    }else {
        result.1.append(num)
    }
}

let p1 = divide.0
let p2 = divide.1

print("Numeros pares \(p1)")
print("Numeros impares \(p2)")


//  Temos dois arrays, um de números inteiros funcionando como dividendos e outro com dois números inteiros (2 e 4) funcionando como divisores. Temos dois loops que percorrem esses arrays, aplicando uma condição usando o operador de módulo, onde se o resto da divisão dos elementos do array de dividendos pelos elementos do array de divisores for igual a 0, o número é impresso, e o loop para esse elemento é encerrado com o break, continuando para os outros até o fim de todos os elementos do array de dividendos. Logo, este código verifica se todos os elementos de um array têm um resto igual a 0 ao dividi-los por um número específico.

//  O código filtra valores pares do array, retornando-os. Temos um filtro que itera sobre um array de números inteiros e aplica uma condição com o operador de módulo, retornando o elemento e o valor true. O retorno do valor true se torna necessário devido às etapas que temos no código, onde, ao encontrar o valor que corresponde à condição, o filtro cria um novo array com os números que atendem a essa condição.

//Este código filtra os valores pares de um array, retornando-os. Ele faz isso usando um filtro que percorre um array de números inteiros. Para cada elemento no array, ele aplica uma condição com o operador de módulo (%). Se o resultado dessa condição for verdadeiro, o elemento é retornado junto com o valor true. O retorno do valor true é necessário devido ao processo que ocorre no código. Quando um elemento corresponde à condição (ou seja, é par), o filtro o inclui em um novo array, criando assim um novo conjunto de números que atendem a essa condição. Portanto, o resultado final é um novo array contendo apenas os números pares do array original. O valor true não é o que é retornado, mas sim um marcador que indica quais elementos foram mantidos no novo array.


