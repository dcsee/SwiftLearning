//
//  Neuron2.swift
//  SwiftNN
//
//  Created by Dan See on 1/6/16.
//  Copyright © 2016 Dan See. All rights reserved.
//

import Foundation

class Network{
	
	var perceptrons: [Perceptron]
	let learningRate: Int
	let layerSize: Int
	
	init(ls: Int, numLayers: Int, lr: Int, featuresVector: [UInt32]){
		learningRate = lr
		layerSize = ls

		perceptrons = [Perceptron]()
		for _ in 0 ... ls - 1{
			perceptrons.append(Perceptron(fv: featuresVector, wvSize: ls, lr: lr))
		}
	}
}

class Perceptron{
	
	var featuresWeights: [UInt32]	//this is W, i.e. W1 ... Wn
	let featuresVector: [UInt32]
	let learningRage: Int
	
	init(fv: [UInt32], wvSize: Int, lr:Int){
		featuresVector = fv
		learningRage = lr
		
		featuresWeights = [UInt32](count: wvSize, repeatedValue: 0)
		for i in 0 ... wvSize - 1{
			featuresWeights[i] = arc4random()
		}
		
	}

	func forwardCalcOutput() -> UInt32{
		
		var output: UInt32 = 0	//the neuron's output, or y
		
		for i in 0 ... featuresWeights.capacity - 1{
			output += featuresWeights[i] * featuresVector[i]
		}
		
		return output
	}//calculates the output y of the neuron by multiplying each weight against each feature in sequence
}