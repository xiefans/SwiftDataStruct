//
//  List.swift
//  SwiftDataStruct
//
//  Created by 谢帆 on 2020/10/25.
//

import Cocoa

protocol List {
    associatedtype `Type`
    var size: UInt {get}
    func isEmpty() -> Bool
    mutating func add(e: Type)
    func find(e: Type) -> Int
    func find(index: Int) -> Type?
    func findPrefix(e: Type) -> Type?
    mutating func delete(e: Type)
    mutating func delete(index: Int)
    mutating func insert(e: Type, index: Int)
}
