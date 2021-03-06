//
//  FileInitialPosition.swift
//  FilesInitialPositionsProvider
//
//  Created by Jovan Jovanovski on 10/4/17.
//  Copyright © 2017 Jovan. All rights reserved.
//

public struct FileInitialPosition: Hashable {
    
    public let filePath: String
    public var position: Point
    
    public struct Point {
        
        public var x: Float
        public var y: Float
        
        public init(x: Float, y: Float) {
            self.x = x
            self.y = y
        }
        
    }
    
    public init(filePath: String, position: Point) {
        self.filePath = filePath
        self.position = position
    }
    
    public static func ==(fileInitialPosition1: FileInitialPosition,
                          fileInitialPosition2: FileInitialPosition) -> Bool {
        return fileInitialPosition1.filePath == fileInitialPosition2.filePath
    }
    
    public var hashValue: Int {
        return filePath.hashValue
    }
    
}
