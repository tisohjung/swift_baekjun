//
//  2751.swift
//  BJ
//
//  Created by minho on 2021/05/14.
//

import Foundation

func main2751() {
    let max: Int = Int(readLine()!)!
    var arr: [Int] = []
    for _ in (0..<max) {
        let line: Int = Int(readLine()!)!
        arr.append(line)
    }

    var output: String = ""
    for n in arr.sorted() {
        output.write("\(n)\n")
    }
    print(output)
}
