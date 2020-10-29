//
//  ArrayList.swift
//  SwiftDataStruct
//
//  Created by 谢帆 on 2020/10/29.
//

import Cocoa

struct ArrayList<T>: List {
    typealias `Type` = T
    
    func isEmpty() -> Bool {
        return list.isEmpty
    }
    
    mutating func add(e: T) {
        list.append(e)
    }
    
    func find(e: T) -> Int {
        return -1
    }
    
    func find(index: Int) -> T? {
        return nil
    }
    
    func findPrefix(e: T) -> T? {
        return nil
    }
    
    func delete(e: T) {
        
    }
}
