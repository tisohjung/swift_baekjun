//
//  2812.swift
//  BJ
//
//  Created by minho on 2021/05/14.
//

import Foundation

func main2812() {
    let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
    let n: Int = inputValues[0]
    var k: Int = inputValues[1]

    let numbers: [Character] = Array(readLine()!)
    var stack: [Character] = []

    for i in 0 ..< n {
        while k > 0 && !stack.isEmpty && stack.last! < numbers[i] {
            stack.removeLast()
            k -= 1
        }
        stack.append(numbers[i])
    }

    for i in 0 ... (stack.count - k - 1) {
        print(stack[i], terminator: "")
    }
}
