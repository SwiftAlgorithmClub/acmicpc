//: [Previous](@previous)

import Foundation

/*:
# 아스키 코드

알파벳 소문자, 대문자, 숫자 0-9중 하나가 주어졌을 때, 주어진 글자의 아스키 코드값을 출력하는 프로그램을 작성하시오.

[백준 11654]( https://www.acmicpc.net/problem/11654)
*/

extension StringProtocol {
    var ascii: [UInt32] {
        return unicodeScalars.compactMap { $0.isASCII ? $0.value: nil }
    }
}

extension Character {
    var ascii: UInt32? {
        return String(self).ascii.first
    }
}

print(readChar(x: "A").ascii)



