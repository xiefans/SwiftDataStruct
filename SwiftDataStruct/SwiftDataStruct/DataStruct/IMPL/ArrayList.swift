//
//  ArrayList.swift
//  SwiftDataStruct
//
//  Created by 谢帆 on 2020/10/29.
//

import Cocoa

struct ArrayList<T: Equatable>: List {
    typealias `Type` = T
    var list: [T] = []
    var size: UInt { UInt(list.count) }
    func isEmpty() -> Bool {
        return list.isEmpty
    }
    
    mutating func add(e: T) {
        list.append(e)
    }
    
    func find(e: T) -> Int {
        return list.firstIndex(of: e) ?? NSNotFound
    }
    
    func find(index: Int) -> T? {
        return list[index]
    }
    
    func findPrefix(e: T) -> T? {
        let i = find(e: e)
        if i != NSNotFound && i > 0{
            return list[i - 1]
        }
        return nil
    }
    
    mutating func delete(e: T) {
        list.removeAll(where: {$0 == e})
    }
    
    mutating func delete(index: Int) {
        if index < size && index >= 0 {
            list.remove(at: index)
        }
    }
    
    mutating func insert(e: T, index: Int) {
        if index >= 0 && index <= size {
            list.insert(e, at: index)
        }
    }
}
