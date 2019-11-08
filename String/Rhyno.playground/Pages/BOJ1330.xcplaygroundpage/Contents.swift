import Foundation

if let str = readLine() {
    let i = str.split(separator: " ").map { Int($0)!}
    let b = i[0] - i[1]

    if b>0 {
        print(">")
    } else if b<0 {
        print("<")
    } else {
        print("==")
    }
}
