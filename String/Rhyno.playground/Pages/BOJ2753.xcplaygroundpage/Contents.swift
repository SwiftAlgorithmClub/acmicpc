//: [Previous](@previous)

import Foundation

if let a = readLine(), let year = Int(a) {
    if year % 400 == 0 {
        print(1)
    } else if year % 4 == 0, year % 100 != 0 {
        print(1)
    } else {
        print(0)
    }
}
