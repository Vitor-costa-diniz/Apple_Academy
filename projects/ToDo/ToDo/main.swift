//
//  main.swift
//  ToDo
//
//  Created by userext on 10/05/23.
//

import Foundation

var rawUserInput : String?
var usrName: String?

var usrContinueOrNot: String?

let defaultAppMessages = DefaultAppMessages()

let task1 = Tasks(title: "Task 1", description: "Descrição Tarefa 1")
let task2 = Tasks(title: "Task 1", description: "Descrição Tarefa 1")

let taskArray = [task1, task2]


print("\(defaultAppMessages.welcomeMessage)", terminator: "")
usrName = readLine()


    IO.saveTasksToDesktop(tasks: taskArray, fileName: "TaskList")





repeat {
    print(defaultAppMessages.defaultOptions)
    rawUserInput = readLine()
    
    
    
    usrContinueOrNot = defaultAppMessages.continueOrTerminate()
    
    
    
} while usrContinueOrNot?.lowercased() != "y"
