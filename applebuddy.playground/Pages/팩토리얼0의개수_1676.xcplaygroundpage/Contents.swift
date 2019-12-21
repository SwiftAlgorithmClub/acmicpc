
// 팩토리얼 0의 개수 문제풀이 2)

import Foundation

guard let _N = readLine(),
    let N = Int(_N) else { print(0); exit(0) }

var num = 1, Ans = 0

for i in 0 ... N {
    if i == 0 { continue }
    num *= i
    while num % 10 == 0 {
        Ans += 1
        num /= 10
    }
    num %= 1_000_000
}

print(Ans)

// 팩토리얼 0의 개수 문제풀이 1)
/*
 import Foundation

 guard let _N = readLine(),
 let N = Int(_N) else { print(0); exit(0) }

 var three = 0, five = 0
 for i in 0...N {
 if i == 0 { continue }
 var tempI = i
 while tempI%3 == 0 {
     three += 1
     tempI/=3
 }

 tempI = i
 while tempI%5 == 0 {
     five += 1
     tempI/=5
 }
 }

 print(three < five ? three : five)
 */
