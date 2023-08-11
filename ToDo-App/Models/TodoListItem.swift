//
//  TodoListItem.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import Foundation

struct TodoListItem: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let creationDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
