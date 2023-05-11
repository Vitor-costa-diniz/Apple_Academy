//
//  main.swift
//  ToDo
//
//  Created by userext on 10/05/23.
//

import Foundation

var rawUserInput : String?
var usrName: String


repeat {

    rawUserInput = readLine()
    
} while rawUserInput?.lowercased() != "y"

func getTasksPathFromDesktop() -> URL {
    let documents = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask)
    let tasksFilePath: URL = documents[0]  // This is an assumption!
    return tasksFilePath
}

func saveTasksToDesktop(tasks: [Tasks], fileName: String) -> Void {
    let filePath: URL = getTasksPathFromDesktop().appending(path: fileName)
    let allTasksAsString = TodoList.convertTasksToString(tasks: tasks)
    let textToWrite = allTasksAsString
    do {
        try textToWrite.write(to: filePath, atomically: true, encoding: .utf8)
    } catch {
        print(error.localizedDescription)
    }
}
