//
//  NetworkManagerTest.swift
//  wbBidderTests
//
//  Created by Artem on 16.05.2023.
//

import XCTest
@testable import wbBidder

class NetworkManagerTest: XCTestCase {
    
    var networkManager: NetworkManager!
    
    override  func setUp() {
        super.setUp()
        self.networkManager = NetworkManager()
    }
 
    override func tearDown() {
        
        
        super.tearDown()
    }


    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testNetworkManagerNotNil() {
        let network = NetworkManager()
        XCTAssertNotNil(network)
    }
    
    func testNetworkManagerHaveBaseUrlAsString() {
        
        let baseUrl = self.networkManager.baseUrl
        let type = type(of: baseUrl)
        
        XCTAssertNotNil(baseUrl)
        XCTAssertTrue(type == String.self)
        XCTAssertEqual(baseUrl, "https://suppliers-api.wildberries.ru")
    }
    
    

}
