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
                HeaderView()
                
                // Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
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
                }
                
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
