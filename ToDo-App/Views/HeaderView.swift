//
//  HeaderView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color(red: 0.000, green: 0.118, blue: 0.220, opacity: 1.000))
                .rotationEffect(Angle(degrees: 15))
            VStack{
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("Get shizz done")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
