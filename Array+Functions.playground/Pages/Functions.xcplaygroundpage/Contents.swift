//: [Previous](@previous)

import Foundation

//MARK: - Retornando o menor valor

func min2 (_ a: Int, _ b: Int){
    if a > b {
        print(b)
    } else{
        print(a)
    }
}

min2(-1, 0)

// Temos uma função que recebe dois parâmetros implícitos. Essa função verifica uma condição: se 'a' for maior que 'b', imprime 'b'; caso contrário, imprime 'a'. Portanto, se chamarmos a função min2(9, 0), a função imprimirá '0'.


// Usando o return

func min3 (_ a: Int, _ b: Int) -> Int {
    if a > b {
        return b
    } else {
        return a
    }
}
min2(3, 21)

// Na função agora usamos um retorno do tipo Int que realiza a mesma operação que a função anterior. No entanto, agora é necessário utilizar a palavra 'return'. Ela retorna o valor '3' devido à condição 'a > b'.


// MARK: - Retornando o ultimo digiyo

func lastDigit(_ number: Int) -> Int {
    return number % 32
}

lastDigit(65389)

//Essa função tem um parâmetro number do tipo inteiro e retorna um inteiro. Ela tem um retorno interno do parâmetro number % 32, o que significa que para o parâmetro passado dividido por 32, o módulo será o resto da divisão


// MARK: - Primeiros números

func first(_ N: Int) -> [Int] {
    var numbers: [Int] = []
    
    for number in 1...N {
        numbers.append(number)
    }
    print(numbers)
    return numbers

}
first(9)

 
 // Essa função possui um parâmetro sem nome, N, do tipo Inteiro, e retorna um array de números inteiros. Dentro da função, há uma variável do tipo array de inteiros vazia para armazenar os números inteiros que serão adicionados a esse array por meio de um loop 'for in' em um intervalo de 1 até o parâmetro N que será passado ao chamar a função.


//MARK: - Contagem Regressiva

func countdown(_ N: Int) {
    var i = N
    
    while i > 0 && i > -1 {
        print(i)
        sleep(1)
        //Metodo adormece o thread por um determinado intervalo de tempo.
        i -= 1
    }
    print("GO!")
}
 countdown(3)


// Essa função recebe um parâmetro sem nome do tipo Inteiro, temos uma variavel  i com o parâmetro da função como tipo, temos um loop while enquanto i for maior que 0 e i maior que -1 printamos i , temos um método Sleep que aguarda 1 segundo para printar uma nova variavel ate atender a condicao no final é printado GO!
 

func countdown2(_ i: Int) {
    if i <= 0 {
        print("Go! Countdown 2!")
    } else {
        print(i)
        sleep(1)
        countdown2(i - 1)
    }
}
countdown2(5)

//Na função countdown2(_:), temos um parâmetro sem nome do tipo inteiro. Se i for menor ou igual a 0, é impressa a mensagem 'Go! Countdown 2!'. Caso contrário, o valor de i é impresso com o método sleep, que adiciona um intervalo de 1 segundo entre cada valor do parâmetro i menos 1. Essa função cria uma contagem regressiva e imprime uma mensagem.
