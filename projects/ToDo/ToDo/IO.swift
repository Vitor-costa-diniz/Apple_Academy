//
//  IO.swift
//  ToDo
//
//  Created by userext on 11/05/23.
//

import Foundation

public class IO {
    
    private static func getTasksUrlFromDesktop(fileName: String) -> URL {
        let desktopDocuments = FileManager.default.urls(for: .desktopDirectory, in: .allDomainsMask).first!
        let tasksURL = desktopDocuments.appending(path: fileName)
        return tasksURL
    }

    private static func getTextFromURL(url: URL) -> String {
        do {
            return try String(contentsOf: url)
        } catch {
            return ""
        }
    }

    public static func readTasksFromDesktop(fileName: String) -> String {
        let tasksUrl: URL = getTasksUrlFromDesktop(fileName: fileName)
        let text = getTextFromURL(url: tasksUrl)
        return text
    }

    public static func saveTasksToDesktop(tasks: [Tasks], fileName: String) -> Void {
        let tasksURL: URL = getTasksUrlFromDesktop(fileName: fileName)
        let allTasksAsString = TodoList.convertTasksToString(tasks: tasks)
        let textToWrite = allTasksAsString
        do {
            try textToWrite.write(to: tasksURL, atomically: true, encoding: .utf8)
        } catch {
            print(error.localizedDescription)
        }
    }
}
