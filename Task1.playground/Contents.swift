import UIKit

func primeFactors(_ n: Int) -> Int {
    var n = n
    var sum = 0

    var divisor = 2
    while divisor * divisor <= n {
        while n % divisor == 0 {
            sum = sum + divisor
            n /= divisor
        }
        divisor += divisor == 2 ? 1 : 2
    }
    if n > 1 {
        sum = sum + n
    }

    return sum
}
