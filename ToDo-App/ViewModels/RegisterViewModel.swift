//
//  RegisterViewModel.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import Foundation

class RegisterViewModel: ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
}
