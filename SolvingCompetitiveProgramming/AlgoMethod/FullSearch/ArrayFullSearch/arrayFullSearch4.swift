//
//  arrayFullSearch4.swift
//  SolvingCompetitiveProgramming
//
//  Created by オナガ・ハルキ on 2023/05/30.
//

import Foundation

func arrayFullSearch4() {
    let (_, V) = readTwoInts()
    let array = readIntsArray()
    
    var indexOfV = -1
    for (index, element) in array.enumerated() {
        if element == V {
            indexOfV = index
        }
    }
    print(indexOfV)
    
    // MARK: Functions
    
    /// 標準入力で" "で区切られた2つの整数を表す文字列1行を受け取る．
    /// 文字列をそれぞれInt型にキャストして2つのInt型の値を持つタプルを返す．
    /// - Returns: 標準入力で受け取った(Int, Int)型のタプル1つ
    func readTwoInts() -> (a: Int, b: Int) {
        let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
        return (a: ints[0], b: ints[1])
    }
    
    /// 標準入力で" "で区切られた複数の整数を表す文字列1行を受け取る．
    /// 文字列をそれぞれInt型にキャストしてInt型の配列を返す．
    /// - Returns: 標準入力で受け取った[Int]型の配列1つ．
    func readIntsArray() -> [Int] {
        return readLine()!.split(separator: " ").map { Int(String($0))! }
    }
}