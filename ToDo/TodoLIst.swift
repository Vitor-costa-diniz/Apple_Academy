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
    
}

