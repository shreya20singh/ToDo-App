//
//  RegisterView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start organising your work", angle: -15, backgroundColor: Color(red: 0.004, green: 0.047, blue: 0.118, opacity: 1.000))
            
            //Form
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TDLButton(title: "Create Account", backgroundColor: Color(red: 0.000, green: 0.118, blue: 0.220, opacity: 1.000), action: {
                    //Register Action
                })
            }.offset(y: -50)
            
            //Button
            
               
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
