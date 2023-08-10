//
//  HeaderView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees:angle))
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, backgroundColor: Color(red: 0.000, green: 0.118, blue: 0.220, opacity: 1.000))
}
