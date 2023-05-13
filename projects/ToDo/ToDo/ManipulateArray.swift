//
//  ManipulateArray.swift
//  ToDo
//
//  Created by userext on 12/05/23.
//

import Foundation

public class ManipulateArray {

    static public func addTask() -> Array<Tasks> {
        var array: [Tasks] = []

        print("Digite o título da tarefa: ",terminator:"")
        let title = readLine()
        print("Digite a descrição da tarefa: ",terminator:"")
        let description = readLine()

        let tasks = Tasks(title: title!, description: description!)
        array.append(tasks)
        print("Task Adicionada")

        return array
    }

    static public func editTasks(tasks: [Tasks]) -> [Tasks] {
        var mutatingTasks = tasks
        print("Digite o título da tarefa que deseja pesquisar:")
        let usrInput = readLine()
        if var taskToEdit = mutatingTasks.first(where: { $0.title == usrInput }) {
            print("Tarefa encontrada:")

            print("Deseja Concluir a task? [Y/N] ")
            let usrComplete = readLine()

            if usrComplete!.lowercased() == "y" {
                taskToEdit.isCompleted = true
            } else {
                print("Digite o titulo da tarefa:")
                let usrTitle = readLine()
                print("Digite a descrição da tarefa:")
                let usrDescription = readLine()


                taskToEdit.title = usrTitle!
                taskToEdit.description = usrDescription!
            }
            

        } else {
            print("Tarefa não encontrada.")
        }
        return mutatingTasks
    }

    static public func searchTask(tasks: [Tasks]) -> [Tasks] {
        var mutatingTasks = tasks
        print("Digite o título da tarefa que deseja pesquisar:")
        let usrInput = readLine()
        if let taskToEdit = mutatingTasks.first(where: { $0.title == usrInput }) {
            print("Tarefa encontrada:")
            print(taskToEdit.asString())

            // Now you can edit the task as needed

        } else {
            print("Tarefa não encontrada.")
        }
        return mutatingTasks
    }

    static public func removeTask(tasks: [Tasks]) -> Array<Tasks> {
        var mutatingTasks = tasks
        print("Digite o Título da tarefa que deseja remover:")
        let usrInput = readLine()
        mutatingTasks.removeAll { $0.title == usrInput! }
        return mutatingTasks
    }
}
