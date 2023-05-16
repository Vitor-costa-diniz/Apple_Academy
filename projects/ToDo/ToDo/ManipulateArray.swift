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
        guard let title = readLine(),
              !title.isEmpty
        else { return [] }

        print("Digite a descrição da tarefa: ",terminator:"")
        guard let description = readLine(),
              !description.isEmpty
        else {return []}



        let tasks = Tasks(title: title, description: description)
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
            guard let usrComplete = readLine(),
                  !usrComplete.isEmpty
            else {return mutatingTasks}

            if usrComplete.lowercased() == "y" {
                taskToEdit.isCompleted = true

            } else {
                
                print("Digite o titulo da tarefa:")
                guard let usrTitle = readLine(),
                      !usrTitle.isEmpty
                else { return mutatingTasks}

                print("Digite a descrição da tarefa:")
                guard let usrDescription = readLine(),
                      !usrTitle.isEmpty
                else {return mutatingTasks}


                taskToEdit.title = usrTitle
                taskToEdit.description = usrDescription
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
        if let usrInput {
            mutatingTasks.removeAll { $0.title == usrInput }
            return mutatingTasks
        } else {
            print("Tarefa não encontrada")
            return mutatingTasks
        }
    }
}
