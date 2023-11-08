//: [Previous](@previous)

import Foundation
 
 

func countDivisors(_ number: Int) -> Int {
    var cnt = 0
    for i in 1...number {
        if number % i == 0 {
            cnt += 1
        }
    }
    return cnt
}

func isPrime(_ number: Int) -> Bool {
    if countDivisors(number) == 2{
        return true
    } else {
        return false
    }
}

func printIntervalPrimes( _ finalValue: Int) {
    for i in 2...finalValue {
        if isPrime(i){
            print("Prime: \(i)")
                
        }
    }
}
printIntervalPrimes(10)


