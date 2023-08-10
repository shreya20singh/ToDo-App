//
//  SwiftUIView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List", subtitle: "Get shizz done", angle: 15, backgroundColor: Color(red: 0.000, green: 0.118, blue: 0.220, opacity: 1.000))
                
                
                // Login Form
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        //Attempt log in
                        viewModel.login()
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0.290, green: 0.427, blue: 0.533, opacity: 1.000))
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }).padding()
                }.offset(y: -50)
                
                // Create account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(30)
                Spacer()
            }
        }
        }
}

#Preview {
    LoginView()
}
