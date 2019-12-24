
// MARK: 수 알아내기_1920

import Foundation

let N = Int(readLine()!)!
var dic = [Int:Int]()

let nArr = readLine()!.split(separator: " ").map { Int($0)! }
for i in nArr.indices {
    dic[nArr[i]] = (dic[nArr[i]] ?? 0) + 1
}

let M = Int(readLine()!)!

let mArr = readLine()!.split(separator: " ").map { Int($0)! }
for i in mArr.indices {
    let chk = dic[mArr[i]] == nil ? 0 : 1
    print(chk)
}
