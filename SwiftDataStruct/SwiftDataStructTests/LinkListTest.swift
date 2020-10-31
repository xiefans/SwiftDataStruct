//
//  LinkListTest.swift
//  SwiftDataStructTests
//
//  Created by 谢帆 on 2020/10/25.
//

import XCTest
@testable import SwiftDataStruct

class LinkListTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEmpty() {
        let list = LinkList<Int>()
        XCTAssertTrue(list.isEmpty())
    }
    
    func testAdd() {
        var list = LinkList<Int>()
        list.add(e: 10)
        XCTAssertFalse(list.isEmpty())
    }
    
    func testSize() {
        var list = LinkList<Int>()
        XCTAssert(list.size == 0)
        list.add(e: 10)
        XCTAssert(list.size == 1)
    }
    
    func testFind() {
        var list = LinkList<Int>()
        list.add(e: 10)
        XCTAssert(list.find(e: 10) == 0, String(list.find(e: 10)))
        list.add(e: 101)
        XCTAssert(list.find(e: 101) == 1, String(list.find(e: 101)))
        list.add(e: 102)
        list.add(e: 1020)
        XCTAssert(list.find(e: 1020) == 3, String(list.find(e: 1020)))
    }
    
    func testFindIndex() {
        var list = LinkList<Int>()
        list.add(e: 10)
        XCTAssert(list.find(index: 0) == 10)
        list.add(e: 101)
        XCTAssert(list.find(index: 1) == 101)
        list.add(e: 102)
        list.add(e: 1020)
        XCTAssert(list.find(index: 3) == 1020)
    }
    
    func testFindPrefix() {
        var list = LinkList<Int>()
        list.add(e: 10)
        list.add(e: 11)
        list.add(e: 23)
        XCTAssert(list.findPrefix(e: 23) == 11)
        XCTAssert(list.findPrefix(e: 10) == nil)
        XCTAssert(list.findPrefix(e: 11) == 10)
    }
    
    func testDelete() {
        var list = LinkList<Int>()
        list.add(e: 1)
        list.add(e: 2)
        list.add(e: 3)
        list.add(e: 4)
        XCTAssert(list.size == 4)
        XCTAssert(list.find(index: 0) == 1)
        list.delete(e: 1)
        XCTAssert(list.find(index: 0) == 2)
        list.delete(e: 100)
        XCTAssert(list.find(index: 0) == 2)
        list.delete(e: 3)
        XCTAssert(list.find(e: 4) == 1)
        XCTAssert(list.find(e: 2) == 0)
        XCTAssert(list.find(e: 1) == NSNotFound)
        XCTAssert(list.size == 2)
    }
    
    func testDeleteIndex() {
        var list = LinkList<Int>()
        list.add(e: 1)
        list.add(e: 2)
        list.add(e: 3)
        list.add(e: 4)
        XCTAssert(list.size == 4)
        XCTAssert(list.find(index: 0) == 1)
        list.delete(index: 0)
        XCTAssert(list.find(index: 0) == 2)
        list.delete(index: 100)
        XCTAssert(list.find(index: 0) == 2)
        list.delete(index: 2)
        XCTAssert(list.find(e: 3) == 1)
        XCTAssert(list.find(e: 2) == 0)
        XCTAssert(list.find(e: 1) == NSNotFound)
        XCTAssert(list.size == 2)
    }
}
