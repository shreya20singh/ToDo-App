//
//  LoginViewModel.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){
        
    }
    
    func login(){
        if(validate()){
            Auth.auth().signIn(withEmail: email, password: password)
        }
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage = "Please fill in all the fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "Please enter a valid email"
            return false
        }
        return true
    }
}
