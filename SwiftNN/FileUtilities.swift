import Foundation

class BufferedFileReader {
	
	var file: NSFileHandle
	var lineBuffer: [Character]
	var bufferIndex: Int
	
	
	init(pathToFile: String) {
		file = NSFileHandle(forReadingAtPath: pathToFile)!	//make this a try-throw statement instead
		lineBuffer = [Character]()
		bufferIndex = 0
	}
	
	func nextLine() -> String {
		return ""
	}
	
}