//
//  2588.swift
//  BJ
//
//  Created by minho on 2021/05/14.
//

import Foundation

// MARK: 2588
func main2588() {
    let A: Int = Int(readLine()!)!
    let B: Int = Int(readLine()!)!

    let A3: Int = A * (B % 10)
    let A4: Int = A * ((B % 100) / 10)
    let A5: Int = A * ((B % 1000) / 100)
    let A6: Int = A * B

    print(A3)
    print(A4)
    print(A5)
    print(A6)
}
