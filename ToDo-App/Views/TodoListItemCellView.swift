//
//  TodoListItemView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI

struct TodoListItemCellView: View {
    @StateObject var viewModel = TodoListItemCellViewModel()
    let item: TodoListItem
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button(action: {
                viewModel.toggleIsDone(item: item)
            },label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            })
        }
    }
}

#Preview {
    TodoListItemCellView(item: .init(id: "123", title: "LeetCode", dueDate: Date().timeIntervalSince1970, creationDate: Date().timeIntervalSince1970, isDone: true))
}
