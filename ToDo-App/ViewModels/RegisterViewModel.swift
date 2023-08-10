//
//  RegisterViewModel.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel: ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){
        
    }
    
    func register(){
        if(validate()){
            Auth.auth().createUser(withEmail: email, password: password){[weak self]result, error in
                guard let userId = result?.user.uid else{
                    return
                }
                self?.intsertUserRecord(id: userId)
            }
        }
    }
    
    private func intsertUserRecord(id: String){
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty
                && !email.trimmingCharacters(in: .whitespaces).isEmpty
                && !password.trimmingCharacters(in: .whitespaces).isEmpty else{
                errorMessage = "Please fill out all the fields"
            return false
        }
        guard email.contains("@")
                && email.contains(".") else{
            errorMessage = "Please enter a valid email"
            return false
        }
        guard password.count >= 6 else{
            errorMessage = "Weak password, should atleast be 6 characters long"
            return false
        }
        return true
    }
}
