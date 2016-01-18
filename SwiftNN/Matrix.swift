//
//  Matrix.swift
//  SwiftNN
//
//  Created by Dan See on 1/18/16.
//  Copyright © 2016 Dan See. All rights reserved.
//

import Foundation

enum MatrixError: ErrorType {
	case incompatibleDimensions(lhsRows: Int, rhsCols: Int)
}

class Matrix {
	
	var rows: Int
	var columns: Int
	var table: [[Int]]
	
	init(let c: Int, let r: Int) {
		rows = r
		columns = c
		
		table = [[Int]](count: c, repeatedValue: [Int](count: r, repeatedValue: 0))
		//the first declaration represents the first row along the top of the matrix
		//the second declaration represents the columns extending down from this row
		
	}
	
	init(let r: Int, let c: Int, let t: [[Int]]) {
		rows = r
		columns = c
		table = t
	}
	
	func dot(let v1: [Int], let v2: [Int]) throws -> Int {
		
		var product: Int = 0
		
		if(v1.count != v2.count) {
			throw MatrixError.incompatibleDimensions(lhsRows: v1.count, rhsCols: v2.count)
		} else {
			for i in 0 ... v1.count {
				product = product + (v1[i] * v2[i])
			}
		}
		return product
	}
	
	func multiply(let lhs: Matrix, let rhs: Matrix) throws -> Matrix {
	
	if (lhs.rows != rhs.columns) {
		throw MatrixError.incompatibleDimensions(lhsRows: lhs.rows, rhsCols: rhs.columns)
	} else {
	
//		var product: Matrix = Matrix(c: lhs.rows, r: rhs.columns)
		
//		for i in 0 ... rhs.rows - 1 {
//			dot(rhs.table[i][], lhs.table[i][])
//		}
		
	}
		return Matrix(c: 0, r: 0)
	}
	
}