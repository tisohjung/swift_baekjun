//
//  1000.swift
//  BJ
//
//  Created by minho on 2021/05/14.
//

import Foundation

// MARK: 1000
func main1000() {
    let line: String = readLine()!
    let array: [Substring] = line.split(separator: " ")
    print(Int(array[0])!+Int(array[1])!)
}
