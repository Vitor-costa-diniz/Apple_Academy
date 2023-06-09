//
//  TodoLIst.swift
//  ToDo
//
//  Created by userext on 10/05/23.
//

import Foundation

public class TodoList {
    
    public static func listAllTasks(tasks: [Tasks]) {
        for task in tasks {
            print(task.asString())
        }
    }
    
    public static func convertTasksToString(tasks: [Tasks]) -> String {
        var text = ""
        for task in tasks {
            text += (task.asString() + "\n")
        }
        return text
    }

    public static func searchForTask(by title: String, tasks: [Tasks]) -> [Tasks] {
        var matchedTasks: [Tasks] = []
        for task in tasks {
            if task.title == title {
                matchedTasks.append(task)
            }
        }
        return matchedTasks
    }

}

