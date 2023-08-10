//
//  TodoListView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct TodoListView: View {
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    //Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    TodoListView()
}
