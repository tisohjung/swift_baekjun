//
//  2178.swift
//  BJ
//
//  Created by minho on 2021/05/16.
// https://www.acmicpc.net/problem/2178

import Foundation

// func main() {
func main2178() {
    class Point {
        let x: Int
        let y: Int
        init(_ x: Int, _ y: Int) {
            self.x = x
            self.y = y
        }
    }
    let line: [Int] = readLine()!.split(separator: " ").map({ Int($0)! })
    let n: Int = line[0]
    let m: Int = line[1]

    var maze: [[Int]] = []

    for _ in 0 ..< n {
        let row = readLine()!.map({ Int(String($0))! })
        maze.append(row)
    }

    var visited: [[Int]] = [[Int]](repeating: [Int](repeating: -1, count: m), count: n)
    // BFS Search Queue
    var queue: [Point] = [Point(0, 0)]

    // 상하좌우
    let dy: [Int] = [0, 0, -1, 1]
    let dx: [Int] = [-1, 1, 0, 0]

    // Pre-node of node at n x m
    var predecessor: [[Point]] = [[Point]](repeating: [Point](repeating: Point(-1, -1), count: m), count: n)

    // Distance from start to node
    var distance: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    distance[0][0] = 1

    while queue.count != 0 {
        let node = queue.remove(at: 0)

        // Check not visited
        if visited[node.x][node.y] == -1 {
            visited[node.x][node.y] = 1
            // check all 4 sides
            for i in 0 ..< 4 {
                let nowDx = node.x - dx[i]
                let nowDy = node.y - dy[i]

                if nowDx < 0 || nowDx >= n ||
                    nowDy < 0 || nowDy >= m {
                    // node outside the maze
                    continue
                } else {
                    // visited new node
                    if maze[nowDx][nowDy] == 1 &&
                        visited[nowDx][nowDy] == -1 {
                        predecessor[nowDx][nowDy] = node
                        distance[nowDx][nowDy] = distance[node.x][node.y] + 1
                        queue.append(Point(nowDx, nowDy))
                    }
                }
            }
        }
    }
    print(distance[n - 1][m - 1])
}
