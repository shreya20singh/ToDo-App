//
//  TodoListView.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import SwiftUI
import FirebaseFirestoreSwift

struct TodoListView: View {
    @StateObject var viewModel: TodoListViewModel
    @FirestoreQuery var items: [TodoListItem]
    private let userId: String
    
    init(userId: String){
        self.userId = userId
        //users/<id>/todos/<entries>
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(
            wrappedValue: TodoListViewModel(userId: userId)
        )
    }
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    TodoListItemCellView(item: item)
                        .swipeActions{
                            Button(action: {
                                viewModel.delete(itemId: item.id)
                            }, label: {
                                Image(systemName: "xmark.bin.fill")
                            }).tint(.red)
                        }
                }.listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    //Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView,  content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    TodoListView(userId: "")
}
