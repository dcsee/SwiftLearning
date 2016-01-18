//
//  SwiftNNTests.swift
//  SwiftNNTests
//
//  Created by Dan See on 1/6/16.
//  Copyright © 2016 Dan See. All rights reserved.
//

import XCTest

class SwiftNNTests: XCTestCase {
    
    override func setUp() {
			super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
			super.tearDown()
    }
    
    func testnit() {
			let featuresVector: [UInt32] = [UInt32](count: 3, repeatedValue: 2)
			let sNN = Network(ls: 3, numLayers: 1, lr: 1, featuresVector: featuresVector)
			XCTAssertEqual(sNN.learningRate, 1, "The network's learning rate should be 1")
			XCTAssertEqual(sNN.perceptrons.count, 3, "The number of perceptrons in each layer should be equal to the layer size")
			
			for i in 0 ...  2 {
				for j in 0 ... 2 {
					XCTAssertGreaterThan(sNN.perceptrons[i].featuresWeights[j], 0)
					print(sNN.perceptrons[i].featuresWeights[j])
				}
			}
					
					
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
}
