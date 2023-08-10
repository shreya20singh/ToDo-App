//
//  User.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
