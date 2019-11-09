import Foundation

extension String {
    func getIntegers() -> [Int] {
        var num = 0
        var result:[Int] = []
        for c in self {
            if c == Character(" ") {
                result.append(num)
                num = 0
            } else {
                num *= 10
                num += Int(String(c))!
            }
        }

        result.append(num)

        return result
    }
}

if let _ = readLine() {

    if let sA = readLine(),
        let sB = readLine() {
        let a = sA.getIntegers().sorted()
        let b = sB.getIntegers().sorted()

        var result: [Int] = []

        var indexA = 0
        var indexB = 0

        while indexA < a.count {
            if indexB < b.count {
                if a[indexA] < b[indexB] {
                    result.append(a[indexA])
                    indexA += 1
                } else if a[indexA] == b[indexB] {
                    indexA += 1
                    indexB += 1
                } else {
                    indexB += 1
                }
            } else {
                result.append(contentsOf: a[indexA...])
                break
            }
        }

        print(result.count)
        for r in result {
            print(r, separator: " ", terminator: " ")
        }
    }
}

