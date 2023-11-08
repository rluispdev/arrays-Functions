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

func printIntervalPrimes( _ initialValue: Int, _ finalValue: Int) {
    for i in initialValue...finalValue {
        
        if initialValue < 2 {
            print("The number \(initialValue) no is a number prime. Start with number 2.")
            break
        }
        else  if isPrime(i){
            print("Prime: \(i)")
            
        }
    }
}
printIntervalPrimes(0, 20)

 
