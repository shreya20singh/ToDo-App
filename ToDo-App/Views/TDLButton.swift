//
//  TDLButton.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct TDLButton: View {
    let title: String
    let backgroundColor: Color
    let action: ()-> Void
    var body: some View {
        Button(action: {
            //Action
            action()
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }).padding()
    }
}

#Preview {
    TDLButton(title: "Log In", backgroundColor: Color(red: 0.290, green: 0.427, blue: 0.533, opacity: 1.000), action: {
        //Action
    })
}
