//
//  LinkList.swift
//  SwiftDataStruct
//
//  Created by 谢帆 on 2020/10/25.
//

import Cocoa

private class Node<T> {
    var data: T?
    var next: Node<T>?
    
    init(data: T? = nil) {
        self.data = data
    }
}

struct LinkList<T: Equatable>: List {
    typealias `Type` = T
    private let header: Node<T> = Node(data: nil)
    public var size: UInt = 0
    
    func isEmpty() -> Bool {
        return size == 0
    }
    
    mutating func add(e: T) {
        var node = header
        while node.next != nil {
            node = node.next!
        }
        node.next = Node(data: e)
        size += 1
    }
    
    func find(e: T) -> Int {
        var node = header.next
        var pos = 0
        while node != nil {
            if e == node!.data {
                return pos
            }
            pos += 1
            node = node!.next
        }
        return NSNotFound
    }
    
    func find(index: Int) -> T? {
        var node = header.next
        var tempIndex = 0
        while node != nil {
            if tempIndex == index {
                return node?.data
            }
            
            node = node?.next
            tempIndex += 1
        }
        return nil
    }
    
    func findPrefix(e: T) -> T? {
        return findNode(e: e)?.prefixNode.data
    }
    
    mutating func delete(e: T) {
        if let result = findNode(e: e) {
            result.prefixNode.next = result.currentNode.next
            result.currentNode.next = nil
            size -= 1
        }
    }
    
    mutating func delete(index: Int) {
        if let result = findNode(index: index) {
            result.prefixNode.next = result.currentNode.next
            result.currentNode.next = nil
            size -= 1
        }
    }
    
    mutating func insert(e: T, index: Int) {
        if index == size {
            self.add(e: e)
        } else if let result = findNode(index: index) {
            let node = Node(data: e)
            result.prefixNode.next = node
            node.next = result.currentNode
            size += 1
        }
    }
    
    // MARK: - Private Mehtod
    private func findNode(e: T) -> (prefixNode: Node<T>, currentNode: Node<T>)? {
        var node = header.next
        var prefixNode = header
        while let n = node {
            if n.data == e { return (prefixNode, n) }
            prefixNode = n
            node = n.next
        }
        return nil
    }
    
    private func findNode(index: Int) -> (prefixNode: Node<T>, currentNode: Node<T>)? {
        if index >= size {
            return nil
        }
        var node = header.next
        var prefixNode = header
        var tempIndex = 0
        while let n = node {
            if index == tempIndex { return (prefixNode, n) }
            prefixNode = n
            node = n.next
            tempIndex += 1
        }
        return nil
    }
}
