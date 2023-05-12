//
//  DefaultAppMessages.swift
//  ToDo
//
//  Created by userext on 11/05/23.
//

import Foundation


class DefaultAppMessages {
    
    let welcomeMessage: String = "Bem vindo,por favor digite o seu nome para prosseguirmos: "
    let defaultOptions = "1 - Visualizar Suas Tarefas\n2 - Pesquisar uma tarefa\n3 - Editar uma tarefa\n4 - Excluir uma tarefa "
    let askUserIfContinueOrNot = "Deseja encerrar o programa ? [Y/N]"
    
    public func continueOrTerminate() -> String? {
        print(askUserIfContinueOrNot)
        let usrInput = readLine()
        return usrInput
    }
 }
