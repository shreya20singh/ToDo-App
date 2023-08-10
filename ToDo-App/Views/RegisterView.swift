//
//  RegisterView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start organising your work", angle: -15, backgroundColor: Color(red: 0.004, green: 0.047, blue: 0.118, opacity: 1.000))
            
            //Form
            Form{
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                }
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TDLButton(title: "Create Account", backgroundColor: Color(red: 0.000, green: 0.118, blue: 0.220, opacity: 1.000), action: {
                    viewModel.register()
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
