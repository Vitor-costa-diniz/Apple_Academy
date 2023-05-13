//
//  main.swift
//  ToDo
//
//  Created by userext on 10/05/23.
//

import Foundation

var rawUserInput : String?
var usrName: String?
var tasksArrays: [Tasks] = []
let defaultAppMessages = DefaultAppMessages()


print("\(defaultAppMessages.welcomeMessage)", terminator: "")
usrName = readLine()


var readTaskFromDesktop: String? = IO.readTasksFromDesktop(fileName: "TaskList")
if readTaskFromDesktop == "" {
    tasksArrays = []
} else {
    tasksArrays = Tasks.parseMultipleTasks(from: readTaskFromDesktop!)

}


defer {
    IO.saveTasksToDesktop(tasks: tasksArrays, fileName: "TaskList")
}

repeat {

    print(defaultAppMessages.defaultOptions)
    rawUserInput = readLine()

    switch rawUserInput {

    case "1":
        for element in tasksArrays {
            print("\(element.asString())")
        }

    case "2":
        let addTaskToArray = ManipulateArray.addTask()
        tasksArrays.append(contentsOf: addTaskToArray)

    case "3":
        let searchTask = ManipulateArray.searchTask(tasks: tasksArrays)
        tasksArrays = searchTask

        print("Pesquisar uma tarefa")
    case "4":
        let edtingTask = ManipulateArray.editTasks(tasks: tasksArrays)
        tasksArrays = edtingTask
        
    case "5":
        let removetask = ManipulateArray.removeTask(tasks: tasksArrays)
        tasksArrays = removetask
        print("Excluir uma tarefa")
    case "6":

        print("Volte sempre \(usrName!)")
    default:
        print("Por favor utilize apenas os numeros apresentados na tela.")
    }

} while rawUserInput != "6"

