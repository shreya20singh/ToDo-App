//
//  NewItemView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form{
                //Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                TDLButton(title: "Save", backgroundColor: Color(red: 0.290, green: 0.427, blue: 0.533, opacity: 1.000), action: {
                    viewModel.save()
                    newItemPresented = false
                })
            }
        }
    }
}

#Preview {
    NewItemView( newItemPresented: Binding(get: {
        return true
    }, set: { _ in
    }))
}
