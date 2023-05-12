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

    public static func parseMultipleTasks(from text: String) -> [Tasks] {
        var tasks: [Tasks] = []
        let texts = text.components(separatedBy: "\n")
        for text in texts {
            let task = parseTask(from: text)
            tasks.append(task)
        }
        return tasks
    }

    private static func parseTask(from text: String) -> Tasks {
        // `[ ] - Title 1\t\tDescription of task`
        let indexOfFirstTab = text.firstIndex(of: "\t")!
        let indexOfCompletionStatusSeparator = text.firstIndex(of: "-")!
        let startingIndexOfTitle = text.index(indexOfCompletionStatusSeparator, offsetBy: 2)
        let title = String(text[startingIndexOfTitle..<indexOfFirstTab])

        let indexOfLastTab = text.lastIndex(of: "\t")!
        let description = String(text[text.index(after: indexOfLastTab)...])
        let task = Tasks(title: title, description: description)

        let indexOfOpenBracket = text.firstIndex(of: "[")!
        let indexOfCompletionStatus = text.index(after: indexOfOpenBracket)
        let completionStatus = text[indexOfCompletionStatus]
        if completionStatus == "x" {
            task.isCompleted = true
        }
        else {
            task.isCompleted = false
        }

        return task
    }

}
