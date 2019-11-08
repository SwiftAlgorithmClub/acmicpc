    //: [Previous](@previous)

import Foundation

if let str = readLine(),
    let explode = readLine() {

    let arr = Array(str)
    let ex = Array(explode)
    var st: [Character] = []

    for c in arr {
        st.append(c)

        while st.count >= ex.count,
        st[(st.count-ex.count)...].elementsEqual(ex) {
                st = Array(st[..<(st.count - ex.count)])
        }
    }

    if st.isEmpty {
        print("FRULA")
    } else {
        print(String(arr))
    }
}
