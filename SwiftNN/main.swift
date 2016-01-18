//
//  main.swift
//  SwiftNN
//
//  Created by Dan See on 1/6/16.
//  Copyright © 2016 Dan See. All rights reserved.
//
//	Process.arguments[1] changes the execution directory into the specified directory
//	Process.arguments[2] opens the given file for analysis

import Foundation

let featuresVector: [UInt32] = [UInt32](count: 3, repeatedValue: 1)
let sNN = Network(ls: 3, numLayers: 1, lr: 1, featuresVector: featuresVector)

let nsf: NSFileManager = NSFileManager()

//print(nsf.currentDirectoryPath)
//print("")

//	nsf.changeCurrentDirectoryPath(Process.arguments[1])
//	^^^ enable this line when the code is run from the command line

func initializeWorkingDirectory(defaultDirectory:String = "/Users/dansee/sNN_testing") {

	print("Process arg count has \(Process.arguments.count) items")
	
	if(Process.arguments.count > 2) {
		nsf.changeCurrentDirectoryPath(Process.arguments[1])
	} else {
		nsf.changeCurrentDirectoryPath(defaultDirectory)
	}
	
	print("Changed directory to \(nsf.currentDirectoryPath)")
	
	
	
	do{
		try print(nsf.contentsOfDirectoryAtPath(nsf.currentDirectoryPath))
	} catch {
		print("Couldn't open that directory path.")
	}
}

initializeWorkingDirectory()