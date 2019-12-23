
// MARK: 랜선자르기

import Foundation

let ipArr = readLine()!.split(separator: " ").map { Int($0)! }
let K = ipArr[0], N = ipArr[1]

var arr = [Int](repeating: 0, count: K)
var Ans = 0, max = 0

for i in 0..<K {
    arr[i] = Int(readLine()!)!
    max = max < arr[i] ? arr[i] : max
}

var left = 1, right = max

while(left <= right) {
    let mid = (left + right) / 2
    var amount = 0, minLen = max, count = 0
    for i in arr.indices {
        if (arr[i]/mid) == 0 {
            continue
        } else {
            count = arr[i]/mid
        }
        amount += count
        let nowLen = count>0 ? (arr[i] - arr[i] % mid) / count : arr[i]
        minLen = minLen > nowLen ? nowLen : minLen
    }
    
    if amount >= N {
        left = mid + 1
        Ans = Ans < minLen ? minLen : Ans
    } else {
        right = mid - 1
    }
}

print("\(Ans)")
