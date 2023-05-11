//
//  main.swift
//  ToDo
//
//  Created by userext on 09/05/23.
//

import Foundation


public class Tasks {
    var title: String
    var description: String
    var isCompleted: Bool = false
    
    public init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    public func asString() -> String {
        if isCompleted {
            return "[x] - \(title)\t\t\(description)"
        }
        else {
            return "[ ] - \(title)\t\t\(description)"
        }
    }


}
