//
//  2020.swift
//  BJ
//
//  Created by minho on 2021/06/11.
//

import Foundation

//func main() {
func maink2020() {
    var board: [[Int]] = [[0,0,1], [1,2,2], [1,3,3]]
    let moves: [Int] = [3, 2, 3]
    
    var count: Int = 0
    var stack: [Int] = [0]
    let moves2 = moves.map({ $0 - 1 })

    for i in moves2 {
        for (index, var line) in board.enumerated() {
            print(board)
            if line[i] != 0 {
                stack.append(line[i])
                line[i] = 0
                board[index] = line // has to change line since board is not memory accessed
                if stack.last == stack[stack.endIndex - 2] {
                    stack.popLast()
                    stack.popLast()
                    count += 2
                }
                break
            }
        }
    }
    print(count)
}
