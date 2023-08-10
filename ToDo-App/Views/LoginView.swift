//
//  SwiftUIView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List", subtitle: "Get shizz done", angle: 15, backgroundColor: Color(red: 0.000, green: 0.118, blue: 0.220, opacity: 1.000))
                
                // Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    TextField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        //Attempt log in
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
