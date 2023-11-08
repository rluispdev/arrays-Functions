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


// MARK: - Retornando o ultimo digito

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

//MARK: -  Numeros primos


func divides( _ a: Int, _ b: Int) -> Bool {
    return a % b == 0
}

func countDivisors(_ number: Int) -> Int {
    var cnt = 0
    for i in 1...number {
        if divides(number, i) {
            cnt += 1
            
        }
    }
    return cnt
}

func isPrime(_ number: Int) -> Bool {
    if countDivisors(number) == 2{
        print("This \(number) is Prime!")
        return true
    } else {
        return false
    }
}


///opção 2
func isPrime2(_ number: Int) -> Bool {
    
    if countDivisors(number) == 2 {
        print("This \(number) is Prime!")
    } else {
        print("This \(number) not is!")
    }
    return true
}


divides(2, 3)
divides(6, 3)

countDivisors(2)
countDivisors(6)
isPrime(3)
isPrime(5)
isPrime(4)

// Essa função recebe dois parâmetros, a e b sem nome do tipo Int, e retorna um booleano, onde antes do retorno é verificado se o resto da divisão de a por b é igual a zero, sendo retorna true, se não false.

//Essa função recebe um parâmetro sem nome chamado number do tipo Inteiro, e retorna um inteiro, para contar quantos divisores number possui. Dentro da função é criado uma variavel cnt que vai armazenar a contagem dos divisores. Temos um loop que que busca i num range de 1 até o valor passado na variavel number, para cada valor i nesse range a função divides é chamada, se um number for divisivel por i isso significa que i é um divisor de number e a variavel cnt é incrementada em 1 paracontar esse divisor. No fim a função retorna o valor de cnt que é a contagem de divisores de number.


    //Esta função recebe um parâmetro sem nome com um argumento do tipo inteiro chamado 'number', do tipo Inteiro, e retorna um valor booleano. Ela verifica se a função 'countDivisors' conta quantos divisores o número 'number' possui e, se o resultado for igual a 2, a função 'isPrime' retorna verdadeiro, o que indica que o número é primo.


//Imprimindo os primeiros numeros primos

print("______________________________")


func printFirstPrimes(_ count: Int) {
    var i = 2
    var printed = 0
    while printed < count {
        if isPrime(i) {
           printed += 1
            print(i)
        }
         i += 1
    }
}
 
print("______________________________")

// Imprimindo números primos de 0 a 100

func printIntervalPrimes( _ finalValue: Int) {
    var i = 2
    var printed = 0
    
    while i <= finalValue {
        if isPrime(i){
           printed += 1
        }
        i += 1
    }
}
printIntervalPrimes(13)
 
