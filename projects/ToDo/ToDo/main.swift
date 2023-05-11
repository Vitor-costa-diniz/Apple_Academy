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
