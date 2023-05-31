//
//  arrayFullSearch5.swift
//  SolvingCompetitiveProgramming
//
//  Created by オナガ・ハルキ on 2023/05/31.
//

import Foundation

func arrayFullSearch5() {
    let N = readInt()
    let array = readIntsArray()
    
    var count = 0
    for i in 1..<array.count {
        if array[i-1] < array[i] {
            count += 1
        }
    }
    print(count)
    
    // MARK: Functions
    
    /// 標準入力で1つの整数を表す文字列1行を受け取り，Int型にキャストして返す．
    /// - Returns: 標準入力で受け取ったInt型の値1つ．
    func readInt() -> Int {
        return Int(readLine()!)!
    }
    
    /// 標準入力で" "で区切られた複数の整数を表す文字列1行を受け取る．
    /// 文字列をそれぞれInt型にキャストしてInt型の配列を返す．
    /// - Returns: 標準入力で受け取った[Int]型の配列1つ．
    func readIntsArray() -> [Int] {
        return readLine()!.split(separator: " ").map { Int(String($0))! }
    }
}
