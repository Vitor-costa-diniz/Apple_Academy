//
//  IO.swift
//  ToDo
//
//  Created by userext on 11/05/23.
//

import Foundation

public class IO {
    
    static func getTasksUrlFromDesktop() -> URL {
        let documents: [URL] = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask)
        let tasksFileUrl: URL = documents[0]  // This is an assumption!
        return tasksFileUrl
    }

    static func getTextFromURL(url: URL) -> String {
        var text = ""
        try? text = String(contentsOf: url)
        return text
    }

    public static func readTasksFromDesktop() -> String {
        let tasksUrl: URL = getTasksUrlFromDesktop()
        let text = getTextFromURL(url: tasksUrl)
        return text
    }


    public static func saveTasksToDesktop(tasks: [Tasks], fileName: String) -> Void {
        let filePath: URL = getTasksUrlFromDesktop().appending(path: fileName)
        let allTasksAsString = TodoList.convertTasksToString(tasks: tasks)
        let textToWrite = allTasksAsString
        do {
            try textToWrite.write(to: filePath, atomically: true, encoding: .utf8)
        } catch {
            print(error.localizedDescription)
        }
    }
}
