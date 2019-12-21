
// MARK: 골드바흐의추측_6588

/*

 import Foundation

 func goldBah() {
 let MAX = 1000000
 var Prime = [Int](repeating: 1, count: 1000000 + 1)
 Prime[1] = 0

 let sqrtVal = Int(sqrt(Double(MAX)))
 for i in stride(from: 2, through: sqrtVal, by: 1) {
     if Prime[i]==1 {
         for j in stride(from: i+i, through: MAX, by: i) {
             Prime[j] = 0
         }
     }
 }

 while(true) {
     let N = Int(readLine()!)!
     if N == 0 { break }
     for i in stride(from: 3, to: MAX, by: 2) {
         if Prime[i] == 1 && Prime[N-i] == 1 {
             print("\(N) = \(i) + \(N-i)")
             break
         }
     }
 }
 }

 goldBah()

 */
